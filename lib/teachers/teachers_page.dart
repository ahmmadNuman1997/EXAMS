import 'package:flutter/material.dart';

//import 'package:flutter_application_1/teachers/my_students.dart';
import 'package:exams/teachers/my_students.dart';
import 'creat_exam.dart';
import 'results.dart';

class TeachersPage extends StatefulWidget {
  @override
  _TeachersPageState createState() => _TeachersPageState();
}

class _TeachersPageState extends State<TeachersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (MyStudents())));
                },
                child: Text('طلابي '),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Results()));
                },
                child: const Text(
                  ' النتائج',
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF00695C),
        title: const Text("حساب معلم"),
      ),
      body: const Center(
        child: Text("!!!  لا يوجد اختبار بعد"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF00695C),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddExam()));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
