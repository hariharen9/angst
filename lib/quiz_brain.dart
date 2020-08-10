import 'questions.dart';
import 'quiz.dart';

class QuizBrain_initial {
  List<Question> _questionBank = [
    Question(q: 'Do you feel quite restless/irritable lately?', a: true),
    Question(q: 'Are you experiencing reduced concentration lately?', a: true),
    Question(
        q: 'Are you experiencing a lot of racing thoughts lately?', a: true),
    Question(
        q: 'Are you experiencing one or more of the following feelings? Excessive worrying, Mild numbness , Sudden fear ',
        a: true),
    Question(
        q: 'Do you experience a sense of choking and shortness of breath , like someone\'s holding your chest tightly suddenly?',
        a: true),
  ];

  String getQuestionText() {
    return _questionBank[QuestionNum].questionText;
  }
}

// SCORES
// 0-2    YOU MIGHT HAVE MILD TO MODERATE ANXIETY
// 3-5    YOU MIGHT HAVE MODERATE TO HIGH ANXIETY
