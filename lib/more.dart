import 'package:angst/quiz.dart';
import 'should_i_see_a_doctor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'landing_page.dart';

const bottombarheight = 60.0;
const activecardcolor = Color(0xFFFDA5A0);
const bottombarcolor = Color(0xFFEB155F);

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'More on ANGST',
                  style: GoogleFonts.varela(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          fontSize: 22)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFDA5A0),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: FlatButton(
                  child: Text(
                    'Close',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LandingPage();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        backgroundColor:
            Color.alphaBlend(Color(0xFFFDA5A0), Colors.deepPurple[900]),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: activecardcolor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      child: Text(
                        'Watch this amazing Ted talk \nby Dr.Olivia Remes',
                        style: GoogleFonts.varela(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: FlatButton(
                        color: Color(0xFFFDA5A0),
                        child: Expanded(
                          child: Container(
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://ethical.nyc/wp-content/uploads/2019/05/ted6.jpg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                          ),
                        ),
                        onPressed: _launchURL,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Opacity(
                opacity: 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: activecardcolor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      color: Color(0xFFFDA5A0),
                      child: Text(
                        'Do I have Anxiety?',
                        style: GoogleFonts.varela(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          letterSpacing: 2.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return InitialQuiz();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Opacity(
                opacity: 0.9,
                child: Container(
                    decoration: BoxDecoration(
                      color: activecardcolor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: FlatButton(
                          color: Color(0xFFFDA5A0),
                          child: Text(
                            'Should I see a Doctor?',
                            style: GoogleFonts.varela(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              letterSpacing: 2.0,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return FinalQuiz();
                                },
                              ),
                            );
                          },
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  const url =
      'https://www.ted.com/talks/olivia_remes_how_to_cope_with_anxiety?language=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
