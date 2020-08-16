import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Fact_1 extends StatefulWidget {
  @override
  _Fact_1State createState() => _Fact_1State();
}

class _Fact_1State extends State<Fact_1> {
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
                    '‘I’m not just a worrywart.’',
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
                  '“Living with high-functioning anxiety is probably similar to those who live with other conditions, but the problem with anxiety is that it cannot be seen. I may tell someone that I’m worried, but this is often seen as a part of my character. You know, ‘Oh, she\’s a worrywart.’ No, I\’m not. I’m fighting a disease.” ',
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
