import 'package:flutter/material.dart';

class CreateQuestions extends StatefulWidget {
  @override
  _CreateQuestionsState createState() => _CreateQuestionsState();
}

class _CreateQuestionsState extends State<CreateQuestions> {
  bool value = false;
  List<Widget> containers = []; ////////
  void addContainer() {
    containers.add(
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //بداية الحوية حق اسوال
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              //السؤال
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("السؤال:1"),
              ],
            ),
            Row(
              //حقل ادخل نص السؤال
              children: [
                Container(
                  height: 50,
                  width: 260,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: ' ادخل نص السؤال ',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //صف الاختبارات وضف خيار وحذف خيار
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("حذف خيار"),
                  style: ElevatedButton.styleFrom(
                      //لتغير خلفية البوتون
                      primary: Colors.red),
                ),
                SizedBox(
                  //هامش
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("ضف خيار"),
                  style: ElevatedButton.styleFrom(
                      //لتغير خلفية البوتون
                      primary: Color(0xFF00695C)),
                ),
                SizedBox(
                  width: 80,
                ),
                Text("الاختيارات:"),
              ],
            ),
            Row(
              //الخيار:1
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 10,
                  width: 270,
                  child: Checkbox(
                    value: this.value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                ),
                Text(" الخيار:1 "),
              ],
            ),
            Row(
              //الخيار:2
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 10,
                  width: 270,
                  child: Checkbox(
                    value: this.value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                ),
                Text(" الخيار:2 "),
              ],
            ),
            Row(
              //الخيار:3
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 10,
                  width: 270,
                  child: Checkbox(
                    value: this.value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                ),
                Text(" الخيار:3 "),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('رياضيات متقطعة '),
        centerTitle: true,
        backgroundColor: Color(0xFF00695C),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: containers,
            ),
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, //لتوسيط العناصر داخل الصف
            children: [
              ElevatedButton(
                onPressed: () {
                  addContainer();
                },
                child: Text("ضف سؤال"),
                style: ElevatedButton.styleFrom(
                    //لتغير خلفية البوتون
                    primary: Colors.grey),
              ),
              SizedBox(
                width: 90,
              ),
              ElevatedButton(
                onPressed: () {
                  addContainer();
                },
                child: Text("حفظ"),
                style: ElevatedButton.styleFrom(
                    //لتغير خلفية البوتون
                    primary: Color(0xFF00695C)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all( 50),
//               child: Container(

//                 height: 100,
//                 width: 70,
//                 decoration: BoxDecoration(
//                     color: Colors.grey, borderRadius: BorderRadius.circular(8)),
//                 child: TextButton(
//                   child: Text("انشاءاسئلة",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                       )),
//                   onPressed: () {
//                     // Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //         builder: (context) => CreateQuestions()));
//                   },
//                 ),
//               ),
//             ),
//             TextButton(
//               child: Text("حذف"),
//               onPressed: () {},
//             ),
//             TextButton(
//               child: Text("رياضيات متقطعة"),
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => ViewQuestions()));
//               },
//             ),
//           ],
//         ),
