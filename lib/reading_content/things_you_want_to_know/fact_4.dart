import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fact_4 extends StatefulWidget {
  @override
  _Fact_4State createState() => _Fact_4State();
}

class _Fact_4State extends State<Fact_4> {
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
                    '‘A good day for me is conscious, not natural.’',
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
                    '“For me, a good day means I don’t check my phone immediately when I wake up. I wait until I\’ve had 10 to 15 minutes to meditate on the back porch. A good day means I make it to work on time; I don\’t feel the need to apologize for a million little things that no one else is noticing, and I don\’t lock myself in the bathroom stall at work for three minutes of silence. I get home, am present with my wife and children, eat dinner, and get five to six hours of uninterrupted sleep. That\’s a really good day.” ',
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
