import 'package:angst/landing_page.dart';
import 'package:angst/reading_content/illustrations_4/story_1.dart';
import 'package:angst/reading_content/illustrations_4/story_2.dart';
import 'package:angst/reading_content/illustrations_4/story_3.dart';
import 'package:angst/reading_content/illustrations_4/story_4.dart';
import 'package:angst/reading_content/things_you_want_to_know/fact_1.dart';
import 'package:angst/reading_content/things_you_want_to_know/fact_2.dart';
import 'package:angst/reading_content/things_you_want_to_know/fact_3.dart';
import 'package:angst/reading_content/things_you_want_to_know/fact_4.dart';
import 'package:angst/reading_content/things_you_want_to_know/fact_5.dart';
import 'package:angst/reading_content/things_you_want_to_know/fact_6.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const bottombarheight = 60.0;
const activecardcolor = Color(0xFFFDA5A0);
const bottombarcolor = Color(0xFFEB155F);

class Readings extends StatefulWidget {
  @override
  _ReadingsState createState() => _ReadingsState();
}

class _ReadingsState extends State<Readings> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'READINGS',
                  style: GoogleFonts.varela(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          fontSize: 22)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFDA5A0),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: FlatButton(
                  child: Text(
                    'Close',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LandingPage();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        backgroundColor:
            Color.alphaBlend(Color(0xFFFDA5A0), Colors.deepPurple[900]),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: <Widget>[Stories(), Facts()],
        ),
      ),
    );
  }
}

class Facts extends StatefulWidget {
  @override
  _FactsState createState() => _FactsState();
}

class _FactsState extends State<Facts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '6 Things People with High-Functioning Anxiety Want You to Know',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              letterSpacing: 2,
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2,
          width: 350,
          child: Divider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 2,
          width: 350,
          child: Divider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Opacity(
            opacity: 0.7,
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
                      child: FlatButton(
                        child: Text(
                          '‘I’m not just a worrywart.’',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            letterSpacing: 2,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Fact_1();
                              },
                            ),
                          );
                        },
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
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Fact_2();
                              },
                            ),
                          );
                        },
                        child: Text(
                          ' ‘Just because you can’t see my ...’',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            letterSpacing: 2,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
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
        Expanded(
          child: Opacity(
            opacity: 0.7,
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
                      child: FlatButton(
                        child: Text(
                          '‘I can’t just snap out of it.’',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            letterSpacing: 2,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Fact_3();
                              },
                            ),
                          );
                        },
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
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Fact_4();
                              },
                            ),
                          );
                        },
                        child: Text(
                          '‘A good day for me is ...’',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            letterSpacing: 2,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
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
        Expanded(
          child: Opacity(
            opacity: 0.7,
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
                      child: FlatButton(
                        child: Text(
                          '‘But the bad days are my ...’',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            letterSpacing: 2,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Fact_5();
                              },
                            ),
                          );
                        },
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
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Fact_6();
                              },
                            ),
                          );
                        },
                        child: Text(
                          '‘I just want to be heard.’',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            letterSpacing: 2,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
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
    );
  }
}

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '4 Illustrations of What Anxiety Really Feels Like',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              letterSpacing: 2,
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2,
          width: 350,
          child: Divider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 2,
          width: 350,
          child: Divider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Opacity(
            opacity: 1,
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
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Story_1();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/topic_centers/2019-8/12656-4_Illustrations_of_What_Anxiety_Looks_Like-1296x728-Body_Image-01.jpg?w=1155&h=1528')),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
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
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Story_2();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://images-prod.healthline.com/hlcmsresource/images/topic_centers/2019-8/12656-4_Illustrations_of_What_Anxiety_Looks_Like-1296x728-Body_Image-02.jpg')),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
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
          width: 40,
        ),
        Expanded(
          child: Opacity(
            opacity: 1,
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
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Story_3();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://images-prod.healthline.com/hlcmsresource/images/topic_centers/2019-8/12656-4_Illustrations_of_What_Anxiety_Looks_Like-1296x728-Body_Image-03.jpg')),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
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
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Story_4();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://images-prod.healthline.com/hlcmsresource/images/topic_centers/2019-8/12656-4_Illustrations_of_What_Anxiety_Looks_Like-1296x728-Body_Image-04.jpg')),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
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
    );
  }
}

//https://images-prod.healthline.com/hlcmsresource/images/topic_centers/2019-8/12656-4_Illustrations_of_What_Anxiety_Looks_Like-1296x728-Body_Image-03.jpg
//https://images-prod.healthline.com/hlcmsresource/images/topic_centers/2019-8/12656-4_Illustrations_of_What_Anxiety_Looks_Like-1296x728-Body_Image-04.jpg
