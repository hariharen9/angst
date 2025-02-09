import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
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
                      fontSize: 60,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Center(
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
              ),
            )
          ],
        ) /* add child content here */,
      ),
    );
  }
}
