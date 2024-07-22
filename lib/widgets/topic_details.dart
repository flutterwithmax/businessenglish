import 'package:newbusinessapp/screens/quiz_screen.dart';
import 'package:newbusinessapp/widgets/phrases_card.dart';
import 'package:newbusinessapp/widgets/quiz_container.dart';
import 'package:newbusinessapp/widgets/words_card.dart';
import '/models/topic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopicDetails extends StatefulWidget {
  const TopicDetails({
    super.key,
    required this.topic,
    required this.index,
  });
  final Topic topic;
  final int index;

  @override
  State<TopicDetails> createState() => _TopicDetailsState();
}

class _TopicDetailsState extends State<TopicDetails> {
  int phraseOrVocab = 0;

  Widget segmentedControl() {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: CupertinoSlidingSegmentedControl(
              padding: const EdgeInsets.all(5),
              groupValue: phraseOrVocab,
              children: {
                0: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: Text(
                    'Phrases',
                    style: phraseOrVocab == 0
                        ? const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)
                        : const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.black54),
                  ),
                ),
                1: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Text(
                    'Vocabulary',
                    style: phraseOrVocab == 1
                        ? const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)
                        : const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.black54),
                  ),
                ),
              },
              onValueChanged: (value) => setState(() {
                phraseOrVocab = value!;
              }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 243, 243),
      appBar: AppBar(
        title: Text(widget.topic.name),
      ),
      body: Column(
        children: [
          Container(child: segmentedControl()),
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: phraseOrVocab == 0
                  ? ListView.builder(
                      itemCount: widget.topic.phrases.length,
                      itemBuilder: ((context, index) =>
                          PhraseCard(phrase: widget.topic.phrases[index])),
                    )
                  : ListView.builder(
                      itemCount: widget.topic.words.length,
                      itemBuilder: ((context, index) =>
                          WordsCard(word: widget.topic.words[index]))),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => QuizScreen(
                    topic: widget.topic,
                    index: widget.index,
                  ),
                ));
              },
              child: const QuizContainer(),
            ),
          ),
        ],
      ),
    );
  }
}
