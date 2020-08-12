import 'questions.dart';
import 'should_i_see_a_doctor.dart';
class QuizBrain_final {
  List<Question> _questionBank = [

    Question(
        q:'You have absolutely no control over you worries',
        a:true),

    Question(
        q:'You feel like your thoughts are affecting your day to day well being',
        a:true),

    Question(
        q:'Are you experiencing suicidal or self harming thoughts lately?',
        a:true),

    Question(
        q:'You are experiencing the symptoms for more than 6 months',
        a:true),

    Question(
        q:'Anxiety is affecting more than one area of your life',
        a:true),

  ];
  String getQuestionText() {
    return _questionBank[QuestionNum].questionText;
  }
}

// SCORES
// 1 or More :
// Ask to consult a doctor