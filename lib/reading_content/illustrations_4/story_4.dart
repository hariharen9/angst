import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: ListView(
          children: <Widget>[
            Expanded(
              child: Padding(
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
                  'Like a knife stabbing you in the chest with each breath you take',
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
