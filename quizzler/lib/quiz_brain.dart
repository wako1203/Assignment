class Question {
  String questionText;
  bool questionAnswer;

  Question(this.questionText, this.questionAnswer);
}

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('The Great Wall of China is visible from space.', false),
    Question('Lightning never strikes the same place twice.', false),
    Question('Humans and dinosaurs coexisted.', false),
    Question('Bananas grow on trees.',
        false), // Bananas grow on large herbaceous plants.
    Question('Octopuses have three hearts.', true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
