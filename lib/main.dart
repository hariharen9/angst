import 'package:angst/exercises.dart';
import 'package:angst/landing_page.dart';
import 'package:angst/onboarding_screen.dart';
import 'package:angst/counter.dart';
import 'more.dart';
import 'package:angst/quiz.dart';
import 'package:flutter/material.dart';
import 'should_i_see_a_doctor.dart';
import 'home_page.dart';

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
      home: MyHomePage(),
    );
  }
}
