import 'package:angst/extra.dart';
import 'package:angst/reading_content/illustrations_4/story_1.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'podcasts.dart';
import 'asmr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Angst',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}
