import 'package:angst/extra.dart';
import 'package:angst/landing_page.dart';
import 'package:angst/reading_content/illustrations_4/story_1.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'podcasts.dart';
import 'asmr.dart';

void main() {
  runApp(Angst());
}

class Angst extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Splash(),
    );
  }
}
