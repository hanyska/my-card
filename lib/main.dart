import 'package:flutter/material.dart';
import 'package:my_card/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prescription Writing Software',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Color(0xff23404B),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xff23404B),
        accentColor: Color(0xffe9c46a),
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Colors.white,
            fontSize: 18
          ),
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
