import 'package:exams/main.dart';
import 'package:flutter/material.dart';
import 'Onbording.dart';
void main () => runApp(MyApp());
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Onbording(),
    );
  }
}

