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
            children: <Widget>[
              Expanded(
                child: Text('Trouvaille Inc.',
                     style: GoogleFonts.audiowide(
                       textStyle: TextStyle(
                         fontSize: 50,
                       )
                     ),
                ),
              )
            ],
          ) /* add child content here */,
        ),
      ),
    );
  }
}
