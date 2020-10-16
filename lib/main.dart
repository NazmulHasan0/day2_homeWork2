import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _aboutMe =
      '''I am a Flutter Developer. I can create any UI and UX design.''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            //  1st side
            Container(
              width: 190,
              color: Colors.yellow,
              child: Column(
                children: <Widget>[
                  //  image
                  ClipOval(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/github.jpg',
                        height: 130,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      'CONTACTS',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  myContacts('naz@gmail.com', Icons.mail),
                  SizedBox(height: 5),
                  myContacts('01725552123', Icons.phone_android),
                  SizedBox(height: 5),
                  myContacts('Madaripur', Icons.home),
                  SizedBox(height: 30),
                  Text(
                    'SKILLS',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  mySkills(Icons.radio_button_checked, 'Smart appearance'),
                  SizedBox(height: 5),
                  mySkills(Icons.radio_button_checked, 'Strong work ethic'),
                  SizedBox(height: 5),
                  mySkills(Icons.radio_button_checked, 'Quick learner'),
                  SizedBox(height: 5),
                  mySkills(Icons.radio_button_checked, 'Team Work'),
                ],
              ),
            ),
            //
            //  2nd side
            Container(
              width: 202,
              color: Colors.grey[400],
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(270.0),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Container(
                      height: 80,
                      width: 222,
                      color: Colors.black,
                      child: ListTile(
                        title: Text(
                          'Md. Nazmul Hasan',
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Flutter Developer',
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // just name
                  SizedBox(height: 27),
                  ListTile(
                    title: Text(
                      'ABOUT ME',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      _aboutMe,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  //    about me
                  SizedBox(height: 20),
                  Text(
                    'EDUCATION',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),

                  myEducation(Icons.radio_button_checked,
                      'B.Sc. in Computer Science\n & Engineering'),
                  SizedBox(height: 10),
                  myEducation(Icons.radio_button_checked,
                      'Higher Secondary\n Certificate (HSC)'),
                  SizedBox(height: 10),
                  myEducation(Icons.radio_button_checked,
                      'Secondary School\n Certificate (SSC)'),
                  //    education
                  SizedBox(height: 35),
                  Text(
                    'COMPUTER PROFICIENCY',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  myExperience(Icons.radio_button_checked, 'C'),
                  SizedBox(height: 7),
                  myExperience(Icons.radio_button_checked, 'C++'),
                  SizedBox(height: 7),
                  myExperience(Icons.radio_button_checked, 'JAVA'),
                  SizedBox(height: 7),
                  myExperience(Icons.radio_button_checked, 'Data Structure'),
                  SizedBox(height: 7),
                  myExperience(Icons.radio_button_checked, 'ALGORITHM'),
                  SizedBox(height: 7),
                  myExperience(Icons.radio_button_checked, 'DART'),
                  SizedBox(height: 7),
                  myExperience(Icons.radio_button_checked, 'FLUTTER'),

                  //    computer
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row myExperience(_experienceIcon, _experienceText) {
    return Row(
      children: <Widget>[
        Icon(_experienceIcon),
        SizedBox(width: 10),
        Text(
          _experienceText,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Row myEducation(_educationIcon, _educationText) {
    return Row(
      children: <Widget>[
        Icon(_educationIcon),
        SizedBox(width: 10),
        Text(
          _educationText,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Row mySkills(_skillIcon, _skillText) {
    return Row(
      children: <Widget>[
        Icon(
          _skillIcon,
        ),
        SizedBox(
          width: 10,
        ),
        Text(_skillText,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Row myContacts(_contactText, _contactIcon) {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(270.0),
          ),
          child: Container(
            height: 40,
            width: 60,
            color: Colors.black,
            child: Icon(
              _contactIcon,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
        Text(
          _contactText,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
