class QuizQuestion {
  final String text;
  final List<String> answers;

  QuizQuestion({required this.text, required this.answers});

  List<String> shuffleAnswers() {
    List<String> shuffledAnswers = answers;
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
