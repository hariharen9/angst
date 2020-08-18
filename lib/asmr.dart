import 'package:angst/landing_page.dart';
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
  PageController _controller = PageController(
    initialPage: 0,
  );

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
        child: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: [
            RainBarber(),
            GlassandOther(),
          ],
        ),
      ),
    );
  }
}

_launchURL_rain() async {
  const url = 'https://audiomack.com/song/trouvaille-1/rain-asmr?key=rain';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL_barber() async {
  const url = 'https://audiomack.com/trouvaille-1/song/barber-asmr';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL_scratching() async {
  const url =
      'https://audiomack.com/song/trouvaille-1/scratching-asmr?key=scratching';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL_glass() async {
  const url = 'https://audiomack.com/song/trouvaille-1/glass-asmr?key=glass';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class RainBarber extends StatefulWidget {
  @override
  _RainBarberState createState() => _RainBarberState();
}

class _RainBarberState extends State<RainBarber> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Text(
            'Watching the ASMRs may also serve as a distraction from anxious thoughts while also promoting feelings of increased relaxation',
            style: GoogleFonts.varela(
              textStyle: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 5,
        width: 350,
        child: Divider(
          thickness: 2,
          color: Colors.white,
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
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Raining Sounds -ASMR',
                    style: GoogleFonts.varela(
                      fontSize: 25,
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
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://images.pexels.com/photos/3178798/pexels-photo-3178798.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                  onPressed: _launchURL_rain,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Barber Shop Sounds - ASMR',
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
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1533808232502-bee53575c3af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                  onPressed: _launchURL_barber,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class GlassandOther extends StatefulWidget {
  @override
  _GlassandOtherState createState() => _GlassandOtherState();
}

class _GlassandOtherState extends State<GlassandOther> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Scratching sounds - ASMR',
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
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/3964606/pexels-photo-3964606.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    onPressed: _launchURL_scratching,
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Glass Sounds - ASMR',
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
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/1487154/pexels-photo-1487154.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    onPressed: _launchURL_glass,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
