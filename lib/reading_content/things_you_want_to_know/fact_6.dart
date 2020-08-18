import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fact_6 extends StatefulWidget {
  @override
  _Fact_6State createState() => _Fact_6State();
}

class _Fact_6State extends State<Fact_6> {
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
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    '‘I just want to be heard.’',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.varela(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Color(0xFFFDA5A0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '“I\’d love for people to treat me with understanding and compassion. Those are the only things I really need. If you let me know I am seen and heard, it changes my whole outlook. I want people to know that this is my normal, and sometimes I can\’t just \‘calm down.\’ As much as my anxiety may wear them out, it\’s even worse on me. Sometimes my hands shake for no good reason, and that’s super embarrassing. But I\’m not crazy. I\’m just struggling.” ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.varela(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade900,
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
