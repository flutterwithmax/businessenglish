class Word {
  final String uzWord;
  final String engWord;
  final String transcription;
  final String? soundUrl;
  Word({
    required this.uzWord,
    required this.engWord,
    required this.transcription,
    this.soundUrl,
  });
}
