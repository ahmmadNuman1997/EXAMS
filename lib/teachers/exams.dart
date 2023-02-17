import 'package:flutter/material.dart';

import 'create_questions.dart';
import 'view_questions.dart';

class Exams extends StatefulWidget {
  @override
  _ExamsState createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {
  List<Widget> containers = []; ////////
  void addContainer() {
    containers.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF00695C), borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 34,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                child: TextButton(
                  child: Text("انشاءاسئلة",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateQuestions()));
                  },
                ),
              ),
            ),
            TextButton(
              child: Text("حذف"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("رياضيات متقطعة"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewQuestions()));
              },
            ),
          ],
        ),
      ),
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حساب معلم'),
        centerTitle: true,
        backgroundColor: Color(0xFF00695C),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              addContainer();
            },
            child: Text("اضغط عليها واعمل تحديث للكود"),
          ),
          Expanded(
            child: ListView(
              children: containers,
            ),
          ),
        ],
      ),
    );
  }
}






// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> containers = [];

//   void addContainer() {
//     containers.add(Container(
//       child: Row(
//         children: [
//           RaisedButton(
//             child: Text("Button 1"),
//             onPressed: () {},
//           ),
//           RaisedButton(
//             child: Text("Button 2"),
//             onPressed: () {},
//           ),
//           Text("Text 1"),
//           Text("Text 2"),
//         ],
//       ),
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           RaisedButton(
//             onPressed: () {
//               addContainer();
//             },
//             child: Text("Add Container"),
//           ),
//           Expanded(
//             child: ListView(
//               children: containers,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }