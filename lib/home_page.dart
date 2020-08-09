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
                height: 290 ,
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
            ],
          ) /* add child content here */,
        ),
      ),
    );
  }
}



