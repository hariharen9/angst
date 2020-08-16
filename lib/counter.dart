import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'exercises.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 7;
  Timer _timer;

  void _startTimer() {
    _counter = 7;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Opacity(
                  opacity: 0.9,
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFFDA5A0),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: (_counter > 0)
                              ? Text("")
                              : Text(
                                  "Exhale!",
                                  style: GoogleFonts.robotoCondensed(
                                    textStyle: TextStyle(
                                      letterSpacing: 3,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Center(
                            child: (_counter > 0)
                                ? Text("")
                                : Text(
                                    "Start again if You feel like it",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                        Text(
                          '$_counter',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.pacifico(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 65,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          'Seconds more',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.pacifico(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: FlatButton(
                              onPressed: () => _startTimer(),
                              child: Text(
                                'Take a deep breath',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFFDA5A0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Exercises();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'CLOSE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFFDA5A0),
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
            ],
          ),
        ),
      ),
    );
  }
}
