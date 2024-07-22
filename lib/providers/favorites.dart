import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newbusinessapp/models/phrase.dart';
import 'package:newbusinessapp/models/word.dart';

class FavoritesPhrasesNotifer extends StateNotifier<List<Phrase>> {
  FavoritesPhrasesNotifer() : super([]);

  void toggleFavStats(Phrase phrase) async {
    if (state.contains(phrase)) {
      state = state
          .where((element) => element.transcription != phrase.transcription)
          .toList();
    } else {
      state = [...state, phrase];
    }
  }
}

final favoritePhrases =
    StateNotifierProvider<FavoritesPhrasesNotifer, List<Phrase>>(
        (ref) => FavoritesPhrasesNotifer());

class FavoriteWordsNotifer extends StateNotifier<List<Word>> {
  FavoriteWordsNotifer() : super([]);

  bool toggleFavStats(Word word) {
    if (state.contains(word)) {
      state = state
          .where((element) => element.transcription != word.transcription)
          .toList();
      return false;
    } else {
      state = [...state, word];
      return true;
    }
  }
}

final favoriteWords = StateNotifierProvider<FavoriteWordsNotifer, List<Word>>(
    (ref) => FavoriteWordsNotifer());
