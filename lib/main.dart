import 'package:flutter/material.dart';
import 'package:rolodex/screens/bottombar.dart';
import 'package:rolodex/screens/feedback.dart';
import 'package:rolodex/screens/login/profile.dart';
import 'package:rolodex/screens/splashscreen.dart';
import 'package:rolodex/screens/login/usertype.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rolodex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
