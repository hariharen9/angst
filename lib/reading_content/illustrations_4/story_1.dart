import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const activecardcolor = Color(0xFFFDA5A0);

class Story_1 extends StatefulWidget {
  @override
  _Story_1State createState() => _Story_1State();
}

class _Story_1State extends State<Story_1> {
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
                    'Like a knife stabbing you in the chest with each breath you take',
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
                  color: activecardcolor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'This might sound like an exaggeration, but anxiety can manifest itself with intense physical symptoms, like sharp chest pains.'
                    'It\’s the most intense chest pain I\’ve ever felt. With each breath I take, it feels like the sharp point of a blade is being'
                    'pressed against the inside of my chest. Sometimes it lasts for minutes, sometimes it lasts for hours or even days.'
                    'Other physical symptoms I\’ve experienced include a pounding heart, sweaty palms, and a persistent tightness in my shoulders.'
                    'At first I thought the tightness was related to sitting at a desk and typing all day. But I eventually realized the tightness would '
                    'come and go depending on how anxious I was feeling.I\’ve even had a full-on anxiety-induced panic attack that had me completely '
                    'convinced I was having a heart attack. It culminated in an ambulance ride to the ER and a tightness in my forearms that caused an '
                    'intense feeling of pins and needles, which lasted for 2 hours until I finally calmed down.None of this sounds like merely worrying about '
                    'something, does it?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.varela(
                      fontSize: 15,
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
