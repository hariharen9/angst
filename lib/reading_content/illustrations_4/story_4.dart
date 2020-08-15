import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Story_1 extends StatefulWidget {
  @override
  _Story_1State createState() => _Story_1State();
}

class _Story_1State extends State<Story_1> {
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
            ' I was tempted to describe anxiety as a brain fog that clouds my thoughts, but an explosion in the brain seemed more accurate to me. Anxiety can strike my brain with such force that it smashes my thoughts into scattered bits of shrapnel flying off in all directions. What\’s left is a void, a crater of emptiness. Have you ever interacted with someone you thought could be in the middle of an anxiety attack, and noticed a blank look in their eyes, or a general lack of responsiveness? I\’m willing to bet they\’d love to give you a proper reply to your question, but in that moment their mind is a crater with nothing to give. Thoughts can feel so out of reach that I avoid social interactions entirely, to spare others from having to interact with the emptiness of my anxiety brain. Sometimes I get really frustrated by this. But the more I struggle against it, the more frozen my thoughts become.'
            'So how do I unfreeze myself? There\’s no easy answer, unfortunately. It\’s a matter of time, patience, and giving myself space to unwind and reflect and get back to a base level of control over my mind and body.'
            'Having my anxiety tool bag handy, a therapist who can give me perspective on my thoughts, and a few trusted people to talk with all help me regain that control.',
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