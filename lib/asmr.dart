import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

const bottombarheight = 60.0;
const activecardcolor = Color(0xFFFDA5A0);
const bottombarcolor = Color(0xFFEB155F);

class Asmr extends StatefulWidget {
  @override
  _AsmrState createState() => _AsmrState();
}

class _AsmrState extends State<Asmr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'ASMR',
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
            Text(
                'Watching the ASMRs may also serve as a distraction from anxious thoughts while also promoting feelings of increased relaxation'
            ),
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
                        'Jay Shetty & Zachary Levi: On growing from Anxiety , Depression and Mental Health',
                        style: GoogleFonts.varela(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          letterSpacing: 1.5,
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
                        onPressed: _launchURL_ASMR1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                        'Shann Vander Leek: Anxiety Slayer',
                        style: GoogleFonts.varela(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          letterSpacing: 1.5,
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
                        onPressed: _launchURL_ASMR2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL_ASMR1() async {
  const url =
      'https://audiomack.com/song/trouvaille-1/jayshetty-on-purpose?key=trouvaille';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL_ASMR2() async {
  const url =
      'https://audiomack.com/song/trouvaille-1/anxietyslayer?key=trouvaille';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
