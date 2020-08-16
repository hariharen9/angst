import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fact_5 extends StatefulWidget {
  @override
  _Fact_5State createState() => _Fact_5State();
}

class _Fact_5State extends State<Fact_5> {
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
        child: ListView(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    '‘But the bad days are my normal.’',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.varela(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
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
                  '“Part of what makes a day bad is what I call a nameless fear. You\’re afraid, but you don\’t know why or what of. It\’s not anything rational. You simply feel scared, worried, anxious over something you just can\’t name. It\’s hard to come down from this, and it happens to me pretty frequently. Bad days are ones where you are scared, don\’t know why, and can do nothing other than to turn to your meds and hope.” ',
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
    );
  }
}

