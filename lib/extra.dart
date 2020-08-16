Scaffold(
body: Container(
decoration: BoxDecoration(
image: DecorationImage(
image: AssetImage('assets/images/background.jpg'),
fit: BoxFit.cover,
),
),
child: ListView(
children: <Widget>[
Expanded(
child: Padding(
padding: EdgeInsets.all(10.0),
child: Center(
child: Text(
'Like a rain cloud of negative speak following your every move',
textAlign: TextAlign.center,
style: GoogleFonts.varela(
fontSize: 30,
fontWeight: FontWeight.w800,
color: Colors.white,
),
),
),
),
),
Container(
margin: EdgeInsets.all(25.0),
decoration: BoxDecoration(
color: Color(0xFFFDA5A0),
borderRadius: BorderRadius.circular(15),
),
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Text(
'One of anxiety\’s defining characteristics for me is self-judgment. A harsh, loud, stubborn voice spewing an endless stream of negativity. When my mind gets caught in this loop, it\’s tough to break out of it. Really tough.'
