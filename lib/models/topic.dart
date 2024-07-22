import 'package:newbusinessapp/models/quiz.dart';

import '/models/phrase.dart';
import '/models/word.dart';

class Topic {
  final String name;
  final String imagePath;
  final List<Phrase> phrases;
  final List<Quiz>? quiz;
  final List<Word> words;

  Topic({
    this.quiz,
    required this.name,
    required this.imagePath,
    required this.phrases,
    required this.words,
  });
}
