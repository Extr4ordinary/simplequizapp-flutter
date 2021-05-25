import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Istanbul is the capital of Turkey', false),
    Question('Premier league established in 1992', true),
    Question('Approximately one quarter of human bones are in the feet', true),
    Question('Turks live in the desert', false),
    Question('Elon Musk is the richest people man in the world', false),
    Question('Krone is the currency of Denmark', true),
    Question('Vietnam is known as the Land of White Elephant', false),
    Question('Canada and the USA share the longest international border', true),
    Question('Bee has five eyes', true),
    Question('Buckingham Palace is the most expensive home in the world', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
