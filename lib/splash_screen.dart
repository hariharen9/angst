import 'dart:async';
import 'package:angst/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LandingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 290,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'TROUVAILLE \n     INC.',
                    style: GoogleFonts.roboto(
                        letterSpacing: 10.0,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'A N G S T',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Center(
                child: Row(
                  children: <Widget>[
                    Center(
                      child: Container(
                          child: Icon(
                        Icons.copyright,
                        color: Colors.white,
                      )),
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          '2020, Trouvaille Inc.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ) /* add child content here */,
        ),
      ),
    );
  }
}
