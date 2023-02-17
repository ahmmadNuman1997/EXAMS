import 'package:flutter/material.dart';

class ViewQuestions extends StatefulWidget {
  @override
  _ViewQuestionsState createState() => _ViewQuestionsState();
}

class _ViewQuestionsState extends State<ViewQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('رياضيات متقطعة'),
          centerTitle: true,
          backgroundColor: Color(0xFF00695C),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 150),
                      child: Text("رياضيات "),
                    ),
                    Text("المادة"),
                  ],
                ),
                Container(
                  height: 0.7,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 6),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 150),
                      child: Text(" نصفي"),
                    ),
                    Text(" نوع الاختبار"),
                  ],
                ),
                Container(
                  height: 0.7,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 6),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 150),
                      child: Text("الاول"),
                    ),
                    Text(" المستوى"),
                  ],
                ),
                Container(
                  height: 0.7,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 6),
                ),
              ],
            ),
          ),
        ));
  }
}
