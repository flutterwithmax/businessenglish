import 'package:flutter/material.dart';
import 'package:newbusinessapp/models/topic.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newbusinessapp/providers/test_complete.dart';
import 'package:audioplayers/audioplayers.dart';

class QuizScreen extends ConsumerStatefulWidget {
  final Topic topic;
  final int index;
  const QuizScreen({
    super.key,
    required this.topic,
    required this.index,
  });

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  Future<void> _playSound(String assetPath) async {
    await _audioPlayer.play(AssetSource(assetPath));
  }

  int testIndex = 0;
  bool _answerA = false;
  bool _answerB = false;
  bool _answerC = false;
  bool _answerD = false;
  String? pickerAnswer;
  @override
  Widget build(BuildContext context) {
    var myAnswer = widget.topic.quiz![testIndex].answer;
    var myQuestion = widget.topic.quiz![testIndex].question;
    var myWords = widget.topic.quiz![testIndex].answers.keys.toList();
    var myTranscripts = widget.topic.quiz![testIndex].answers.values.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.topic.name),
      ),
      body: Column(
        children: [
          Text(myQuestion),
          const SizedBox(
            height: 10,
          ),
          //a
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            margin: const EdgeInsets.all(10),
            child: CheckboxListTile(
                title: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      width: 40,
                      height: 40,
                      child: const Text('A'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(myWords[0]),
                        Text(myTranscripts[0]),
                      ],
                    )
                  ],
                ),
                value: _answerA,
                onChanged: (val) {
                  setState(() {
                    _answerA = val!;
                    pickerAnswer = null;
                    if (val) {
                      _answerB = false;
                      _answerC = false;
                      _answerD = false;
                      pickerAnswer = myWords[0];
                    }
                  });
                }),
          ),
          //b
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: CheckboxListTile(
                title: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      width: 40,
                      height: 40,
                      child: const Text('B'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(myWords[1]),
                        Text(myTranscripts[1]),
                      ],
                    )
                  ],
                ),
                value: _answerB,
                onChanged: (val) {
                  setState(() {
                    _answerB = val!;
                    pickerAnswer = null;
                    if (val) {
                      _answerA = false;
                      _answerC = false;
                      _answerD = false;
                      pickerAnswer = myWords[1];
                    }
                  });
                }),
          ),
          //c
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: CheckboxListTile(
                title: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      width: 40,
                      height: 40,
                      child: const Text('C'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(myWords[2]),
                        Text(myTranscripts[2]),
                      ],
                    )
                  ],
                ),
                value: _answerC,
                onChanged: (val) {
                  setState(() {
                    _answerC = val!;
                    pickerAnswer = null;
                    if (val) {
                      _answerB = false;
                      _answerA = false;
                      _answerD = false;
                      pickerAnswer = myWords[2];
                    }
                  });
                }),
          ),
          //d
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: CheckboxListTile(
                title: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      width: 40,
                      height: 40,
                      child: const Text('D'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(myWords[3]),
                        Text(myTranscripts[3]),
                      ],
                    )
                  ],
                ),
                value: _answerD,
                onChanged: (val) {
                  setState(() {
                    pickerAnswer = null;
                    _answerD = val!;
                    if (val) {
                      _answerB = false;
                      _answerC = false;
                      _answerA = false;
                      pickerAnswer = myWords[3];
                    }
                  });
                }),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('${testIndex + 1}/ ${widget.topic.quiz!.length}'),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: testIndex == widget.topic.quiz!.length - 1
                        ? () {
                            Navigator.of(context).pop();
                          }
                        : null,
                    child: const Text(
                      'Yopish',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (pickerAnswer == myAnswer &&
                          testIndex == widget.topic.quiz!.length - 1) {
                        ref
                            .watch(quizCompletionProvider.notifier)
                            .updateCompletionStatus(
                                'quiz${widget.index + 1}', true);
                        _playSound('sounds/complete.mp3');
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          animType: AnimType.rightSlide,
                          title: 'Tog`ri',
                          desc: 'Siz hamma savollarga javob berib bo`ldingiz',
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        ).show();
                      }

                      if (pickerAnswer == null) {
                        _playSound('sounds/error.mp3');
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Xatolik',
                          desc: 'Iltimos javobingizni belgilang',
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        ).show();
                      }
                      if (pickerAnswer == myAnswer &&
                          testIndex != widget.topic.quiz!.length - 1) {
                        _playSound('sounds/correct.mp3');
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          animType: AnimType.rightSlide,
                          title: 'Tog`ri',
                          desc: 'Siz tog`ri javob belgiladingiz',
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {
                            setState(() {
                              testIndex++;

                              _answerA = false;
                              _answerB = false;
                              _answerC = false;
                              _answerD = false;
                              pickerAnswer = null;
                            });
                          },
                        ).show();
                      }
                      if (pickerAnswer != null && pickerAnswer != myAnswer) {
                        _playSound('sounds/wrong.mp3');
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Notog`ri',
                          desc: 'Notog`ri javob belgiladingiz',
                          btnOkOnPress: () {},
                        ).show();
                      }
                    },
                    child: const Text(
                      'Check',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
