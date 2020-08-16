import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Fact_2 extends StatefulWidget {
  @override
  _Fact_2State createState() => _Fact_2State();
}

class _Fact_2State extends State<Fact_2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                '‘Just because you can’t see my illness doesn’t mean it’s not there.’',
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
          child: Text(
            '“One of the things I struggle most with as a person with high-functioning anxiety is the fact that other people, including my family and friends, easily excuse the times my anxiety is giving me problems, because I ‘don\’t seem to have anything wrong’ with me. I still have sleepless and restless nights because of overthinking. I still learn every day how a ‘normal’ person is supposed to react to certain situations. It’s much harder to talk about it when it doesn’t visibly appear like you’re suffering.” ',
            textAlign: TextAlign.center,
            style: GoogleFonts.varela(
              fontSize: 8,
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade900,
            ),
          ),
        ),
      ],
    );
  }
}