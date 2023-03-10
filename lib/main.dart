import 'package:exams/main_pages/home_screen.dart';
import 'package:exams/screens/auth.dart';
import 'package:exams/screens/login_screen.dart';
import 'package:exams/screens/sigunp_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'The_teacher/Examquestions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const Auth(),
      routes: {
        '/': (context) => const Auth(),
        'homeScreen': (context) => HomeScreen(),
        'SigunpScreen': (context) => SignuScreen(),
        'loginScreen': (context) => LoginScreen(),
      },
    );
  }
}


