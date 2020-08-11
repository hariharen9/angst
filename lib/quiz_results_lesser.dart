import 'quiz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class resultLessThanTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: Text(
                    'You have mild to moderate anxiety',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.varela(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
