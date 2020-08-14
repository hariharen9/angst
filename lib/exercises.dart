import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const activecardcolor = Color(0xFFFDA5A0);
int exerciseNum = 0;

class Exercises extends StatefulWidget {
  @override
  _ExercisesState createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
                      'Ways to beat Anxiety',
                      style: GoogleFonts.syncopate(
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                getExerciseText(),
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
                                    'Previous',
                                    style: GoogleFonts.varela(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (exerciseNum > 0) {
                                        exerciseNum--;
                                      } else {
                                        Alert(
                                                context: context,
                                                title: "Attention",
                                                desc: "Please move forward")
                                            .show();
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
                                    'Next',
                                    style: GoogleFonts.varela(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (exerciseNum < 4) {
                                        exerciseNum++;
                                      } else {
                                        Alert(
                                                context: context,
                                                title: "Attention",
                                                desc: "Please move Backward")
                                            .show();
                                      }
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  EXERCISES
List exercises = [
  //0
  'If you are feeling anxious right now, Stop what you are doing and concentrate on your breath.', //this screen should have the timer
  //1
  'If you are feeling like you are out of your body , Touch five things around you and constantly remind yourself the You got this!',
  //2
  'Try to answer these questions\nWhy are you feeling anxious right now?\nWhat is your thought pattern right now?\nLet your mind wander and try to understand what it\'s trying to say',
  //3
  'Keep reassuring yourself that things would be alright and chant a mantra of your own! ',
  //4
  'Sometimes people can feel less anxious when they have physical contact with people they love. Ask your loved ones for a big bear hug!',
];

String getExerciseText() {
  return exercises[exerciseNum];
}
