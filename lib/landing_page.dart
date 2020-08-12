import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.all(15.0),
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Expanded(
                    child: Center(
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
                  height: 460.0,
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
                  child: Expanded(
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
                        child: Expanded(
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
                                        'I\'m ANXIOUS',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            letterSpacing: 5,
                                            color: Colors.redAccent,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        //onpressed action
                                        print('Im anxious');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                child: Center(
                                  child: Text(
                                    'Do these Simple steps\n To overcome  Anxiety',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        color: Colors.white,
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
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 350,
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.redAccent,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Text(
                      'Editors\' Picks',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 30,
                          letterSpacing: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 350,
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 20,
                ),
                Expanded(
                  child: Opacity(
                    opacity: 0.85,
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
                              child: Text(
                                'ASMR',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  letterSpacing: 4,
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
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
                              child: Text(
                                'PODCASTS',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  letterSpacing: 4,
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Opacity(
                    opacity: 0.85,
                    child: Container(
                      height: 150,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFFDA5A0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'READINGS',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            letterSpacing: 4,
                            textStyle: TextStyle(
                              color: Colors.white,
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
                  width: 20,
                ),
                Expanded(
                  child: Opacity(
                    opacity: 0.85,
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
                              child: Text(
                                'MORE..',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  letterSpacing: 4,
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
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
                              child: Text(
                                'Weekly\nReports',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  letterSpacing: 4,
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
