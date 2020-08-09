import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
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
                height: 200,
              ),
              SizedBox(
                height: 200,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'TROUVAILLE INC.',
                    style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ) /* add child content here */,
        ),
      ),
    );
  }
}
