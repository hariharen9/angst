import 'should_i_see_a_doctor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class final_quiz_results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Opacity(
                opacity: 0.81,
                child: Container(
                  margin: EdgeInsets.all(35.0),
                  decoration: BoxDecoration(
                    color: activecardcolor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Center(
                    child: Material(
                      color: Color(0xFFFDA5A0),
                      child: Text(
                        'Yes , We think you should. Having feelings of anxiety or an anxiety disorder is normal and nothing to be ashamed of.\n '
                        'No quiz can get know you as better as a health care professional.\n'
                        'The sooner you have an open and honest conversation about anxiety with a health care professional,'
                        ' the sooner you can feel better.\n '
                        'Anxiety is highly treatable, and it’s possible to manage it effectively and feel fulfilled. ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.varela(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
