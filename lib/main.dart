import 'package:aminterested/iPhoneXXS11Pro1.dart';
import 'package:flutter/material.dart';

import 'Screens/LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
    );
  }
}
