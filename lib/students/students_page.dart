import 'package:flutter/material.dart';
//import 'package:flutter_application_1/teachers/teachers_page.dart';
import 'package:exams/teachers/teachers_page.dart';

class StudentsPage extends StatefulWidget {
  @override
  _StudentsPageState createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00695C),
          centerTitle: true,
          title: Text("حساب طالب"),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'البريد الالكتروني/الرقم الجامعي ',
                    hintText: '   id as @.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("دخول الامتحان"),
              ),
            ),
            GestureDetector(
              // عند النقر على المربع ينتقل الى صفحة اخرى
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TeachersPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2)),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logoEXam.png',
                      width: 220,
                      height: 200,
                    ),
                    Text("امتحاناتي")
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
