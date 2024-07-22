class Phrase {
  final String uzPhrase;
  final String engPhase;
  final String transcription;
  final String? soundUrl;
  Phrase({
    required this.uzPhrase,
    required this.engPhase,
    required this.transcription,
    this.soundUrl,
  });
}
