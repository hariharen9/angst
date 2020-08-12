import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:angst/should_i_see_a_doctor_quiz_brain.dart';
import 'should_i_see_a_doctor_results.dart';

QuizBrain_final qb = QuizBrain_final();
const bottombarheight = 60.0;
const activecardcolor = Color(0xFFFDA5A0);
const bottombarcolor = Color(0xFFEB155F);
int QuestionNum = 0;

class FinalQuiz extends StatefulWidget {
  @override
  _FinalQuizState createState() => _FinalQuizState();
}

class _FinalQuizState extends State<FinalQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'Should I see a Doctor?',
                    style: GoogleFonts.varela(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
              width: 350,
              child: Divider(
                thickness: 2.0,
                color: activecardcolor,
              ),
            ),
            Expanded(
              child: Opacity(
                opacity: 0.81,
                child: Container(
                  margin: EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    color: activecardcolor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Questions(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Questions extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qb.getQuestionText(),
                textAlign: TextAlign.center,
                style: GoogleFonts.varela(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade900,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Color(0xFFFDA5A0),
                  child: Text(
                    'Yes',
                    style: GoogleFonts.varela(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (QuestionNum < 4){
                        QuestionNum++;
                      }else{
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return final_quiz_results();
                            },
                          ),
                        );
                      }
                    });

                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Color(0xFFFDA5A0),
                  child: Text(
                    'NO',
                    style: GoogleFonts.varela(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                      setState(() {
                        if (QuestionNum < 4){
                          QuestionNum++;
                        }else{
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return final_quiz_results();
                              },
                            ),
                          );
                        }
                      });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}