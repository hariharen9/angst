import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Story_3 extends StatefulWidget {
  @override
  _Story_3State createState() => _Story_3State();
}

class _Story_3State extends State<Story_3> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
          child: Text(
            'When I\’m feeling anxious, I often feel my normal self has been replaced by a crafty impostor. Someone who looks just you, but acts like someone else entirely mostly, a lot of blank stares and fidgeting and not much interesting to say.Where did I go? I ask myself in these moments.It has an out-of-body quality to it. I’m watching the impostor from the outside, powerless to fight him off and show everyone the real me.Anxiety has decided to throw a party, and the impostor was the only person invited. How rude, my normal self thinks.There\’s a frustrating powerlessness in the moments, where no matter how hard I try, I just can\’t summon me.I know when this happens, my anxiety has kicked into full blown attack mode and I need to give myself space and time to gather my thoughts and dip into my tool bag  deep breathing, grounding techniques, journaling, therapy, exercise, sleep hygiene, and eating well.If I have the energy, I also make an effort to talk with people I trust, or hang out with a close friend and let their stories and problems occupy my mind for a moment.Eventually, my normal self always reappears, shoving the impostor out of sight. At least for a while, anyway.',
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