import 'package:angst/extra.dart';
import 'package:angst/landing_page.dart';
import 'package:angst/reading_content/illustrations_4/story_1.dart';
import 'package:angst/readings.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'podcasts.dart';
import 'asmr.dart';
import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:angst/onboarding_screen.dart';
import 'package:angst/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Angst());
}

class Angst extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Angst',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}
