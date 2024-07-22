import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuizCompletionNotifier extends StateNotifier<Map<String, bool>> {
  QuizCompletionNotifier() : super({}) {
    _loadCompletionStatus();
  }

  Future<void> _loadCompletionStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final Map<String, bool> initialState = {};

    for (int i = 1; i <= 16; i++) {
      final quizId = 'quiz$i';
      initialState[quizId] = prefs.getBool(quizId) ?? false;
    }

    state = initialState;
    print(state);
  }

  Future<void> updateCompletionStatus(String quizId, bool isCompleted) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(quizId, isCompleted);

    state = {...state, quizId: isCompleted};
  }
}

final quizCompletionProvider =
    StateNotifierProvider<QuizCompletionNotifier, Map<String, bool>>((ref) {
  return QuizCompletionNotifier();
});
