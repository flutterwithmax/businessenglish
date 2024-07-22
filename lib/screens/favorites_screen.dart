import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newbusinessapp/providers/favorites.dart';
import 'package:newbusinessapp/widgets/phrases_card.dart';

import '../widgets/words_card.dart';

class FavoritesScreen extends ConsumerStatefulWidget {
  const FavoritesScreen({super.key});

  @override
  ConsumerState<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends ConsumerState<FavoritesScreen> {
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
    final myFavPhrases = ref.watch(favoritePhrases);
    final myFavWords = ref.watch(favoriteWords);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Favorites'),
      ),
      body: Column(
        children: [
          segmentedControl(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: phraseOrVocab == 0
                  ? ListView.builder(
                      itemCount: myFavPhrases.length,
                      itemBuilder: ((context, index) =>
                          PhraseCard(phrase: myFavPhrases[index])),
                    )
                  : ListView.builder(
                      itemCount: myFavWords.length,
                      itemBuilder: ((context, index) =>
                          WordsCard(word: myFavWords[index]))),
            ),
          ),
        ],
      ),
    );
  }
}
