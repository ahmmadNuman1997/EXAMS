import 'package:exams/main_pages/home_screen.dart';
import 'package:exams/screens/auth.dart';
import 'package:exams/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'choose.dart';


 bool darkNode = false;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([

  ]);

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  static final String title = 'User Profile';
  // final user = UserPreferences.myUser;

   MyApp({Key? key,});

  @override
  Widget build(BuildContext context) => MaterialApp(
       themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),


      home: const Auth(),

      // routes: {
      //   '/': (context) => const Auth(),
      //   'ToChoose': (context) => ToChoose(opendrawer: () {  }, animationtime: 0.8,),
      //   // 'SigunpScreen': (context) => SignuScreen(),
      //   'loginScreen': (context) => LoginPage(),
      //   'loginScreen': (context) => LoginPage(),
      // https://api.flutter.dev/flutter/material/AlertDialog-class.html
      //   'HomeScreen': (context) => HomeScreen(opendrawer: () {  }, animationtime: 0.9,),
      //   // 'hbhhbjkj' : (context) =>  ProfilePage(),
      // },
    );
  }

