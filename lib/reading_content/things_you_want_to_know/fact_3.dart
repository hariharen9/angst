import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fact_3 extends StatefulWidget {
  @override
  _Fact_3State createState() => _Fact_3State();
}

class _Fact_3State extends State<Fact_3> {
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
                    '‘I can’t just snap out of it.’',
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
                  '“There are days I feel like a science experiment, trying each med my doctor prescribes, hoping one of them will make life normal again. Sometimes the med works for a while and stops. A recent med destroyed my libido for a couple of months. At 35, no longer being able to connect with my wife sexually, adds mountains of shame on top of an already steaming pile of guilt. So I travel back to the doctor\’s office for another humiliating visit and tell her just exactly what my side effects are. So we\’re trying a new med. And we hope for different results.”',
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

