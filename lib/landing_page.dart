import 'package:angst/readings.dart';
import 'package:intl/intl.dart';
import 'home_page.dart';
import 'package:angst/asmr.dart';
import 'package:angst/exercises.dart';
import 'package:angst/more.dart';
import 'package:angst/podcasts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

DateTime now = DateTime.now();
String dateNow = DateFormat('yyyy-MM-dd – kk:mm').format(now);

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.vertical,
              children: [PageOne(), PageTwo()],
            ),
          )),
    );
  }
}

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
        child: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Homepage();
                  },
                ),
              );
            },
            child: Text(
              'A N G S T',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Color(0xFFFDA5A0),
                  fontSize: 50,
                  letterSpacing: 8,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 400.0,
      ),
      Container(
        child: Center(
          child: Icon(
            Icons.keyboard_arrow_up,
            size: 40,
            color: Color(0xFFFDA5A0),
          ),
        ),
      ),
      Container(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            height: 150,
            width: 350,
            margin: EdgeInsets.fromLTRB(25, 1, 25, 25),
            decoration: BoxDecoration(
              color: Color(0xFFFDA5A0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    height: 60,
                    child: Center(
                      child: FlatButton(
                        child: Text(
                          'I\'m Anxious',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              letterSpacing: 1,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onPressed: () {
                          //onpressed action
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Exercises();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  child: Center(
                    child: Text(
                      'Do these Simple Exercises\n To overcome  Anxiety',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 10,
        width: 350,
        child: Divider(
          thickness: 2.0,
          color: Colors.white,
        ),
      ),
      Container(
        margin: EdgeInsets.all(8),
        child: Text(
          '$dateNow',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: 13,
              letterSpacing: 7,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(8),
        child: Text(
          'Editors\' Picks',
          style: GoogleFonts.varelaRound(
            textStyle: TextStyle(
              fontSize: 30,
              letterSpacing: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
        width: 350,
        child: Divider(
          thickness: 2.0,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: 300,
        height: 20,
      ),
      Opacity(
        opacity: 0.7,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 150,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color(0xFFFDA5A0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Asmr();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'ASMR',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        letterSpacing: 4,
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 150,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color(0xFFFDA5A0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Podcasts();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'POD\nCAST',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        letterSpacing: 4,
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Opacity(
          opacity: 0.7,
          child: Container(
            height: 150,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Color(0xFFFDA5A0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Readings();
                      },
                    ),
                  );
                },
                child: Text(
                  'READINGS',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    letterSpacing: 4,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Expanded(
        child: Opacity(
          opacity: 0.7,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFFDA5A0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: FlatButton(
                      child: Text(
                        'MORE..',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          letterSpacing: 4,
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return More();
                            },
                          ),
                        );
                      },
                    ),
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
