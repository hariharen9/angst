import 'package:angst/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

const bottombarheight = 60.0;
const activecardcolor = Color(0xFFFDA5A0);
const bottombarcolor = Color(0xFFEB155F);

class Podcasts extends StatefulWidget {
  @override
  _PodcastsState createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'PODCASTS',
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
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: activecardcolor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text(
                            'Jay Shetty & Zachary Levi: On growing from Anxiety , Depression and Mental Health',
                            style: GoogleFonts.varela(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              letterSpacing: 1.5,
                            ),
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
                                        'https://i.ytimg.com/vi/Cp_hDiWUKjQ/maxresdefault.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                            ),
                          ),
                          onPressed: _launchURL_Jay,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: activecardcolor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text(
                            'Shann Vander Leek: Anxiety Slayer',
                            style: GoogleFonts.varela(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              letterSpacing: 1.5,
                            ),
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
                                        'https://secureimg.stitcher.com/feedimageswide/480x270_52112.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                            ),
                          ),
                          onPressed: _launchURL_Shann,
                        ),
                      ),
                    ],
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

_launchURL_Jay() async {
  const url =
      'https://audiomack.com/song/trouvaille-1/jayshetty-on-purpose?key=trouvaille';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL_Shann() async {
  const url =
      'https://audiomack.com/song/trouvaille-1/anxietyslayer?key=trouvaille';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
