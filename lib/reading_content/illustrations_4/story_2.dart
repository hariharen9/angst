import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Story_2 extends StatefulWidget {
  @override
  _Story_2State createState() => _Story_2State();
}

class _Story_2State extends State<Story_2> {
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
                    'Like a rain cloud of negative speak following your every move',
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
                  'One of anxiety\’s defining characteristics for me is self-judgment. A harsh, loud, stubborn voice spewing an endless stream of negativity. When my mind gets caught in this loop, it\’s tough to break out of it. Really tough.'
                      'It can hit me so strongly and unexpectedly that I feel trapped under its weight.I know what you\’re thinking: turn your thoughts to something positive and you\’ll be all right. I\’ve tried, believe me. It simply doesn\’t work for me.There are a few things that, after a lot of practice and patience, have helped me break out of this cycle, though.The first step is recognizing that negative speak is even happening. Because when you get caught in these loops for days on end, you can forget it\’s even there.Then I set aside some time to focus in on my thoughts and feelings without distractions. Deep breathing techniques like the 4-7-8 help to quiet the negative thoughts to a point where I can come up for air and think about what\’s really going on.Another technique that helps is journaling. Just getting my thoughts negative or otherwise onto the page is a form of release, which can help break the cycle.I once sat down and filled two entire pages of my journal with adjectives describing how much I hate myself. Depression, anxiety’s trusty sidekick, was certainly around for that occasion, soaking in the hatred. It wasn\’t fun, but it was a much needed release.'
                      'While positive thinking hasn\’t worked for me, positive reality-based thinking has.Think of the difference this way: Positive thinking might turn my thoughts to abstract ideas like being happy and feeling joyful and having an imaginary thing like falling in love happen to me; positive reality-based thinking turns my thoughts to tangible things I\’ve recently experienced, like the thoughtful birthday gift my brother gave me, the feeling of satisfaction I get from my career, and the song I wrote over the weekend.',
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
