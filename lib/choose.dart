import 'package:flutter/material.dart';
import 'The_Student/the_main.dart';
import 'main_pages/home_screen.dart';
class ToChoose extends StatefulWidget {
  const ToChoose({Key? key}) : super(key: key);

  @override
  State<ToChoose> createState() => _ToChooseState();
}

class _ToChooseState extends State<ToChoose> {
  List dataList = [
    {'text': 'Teacher', "image": "assets/images/"},
    {'text': 'Student', "image": "assets/images/exam.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WelcomeToExams'),
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            elevation: 10,
          ),
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 2,
              semanticChildCount: 10,
              childAspectRatio: 0.7,
              shrinkWrap: true,
              children: List.generate(
                  dataList.length,
                      (index) => InkWell(
                      onTap: () {
                        if (index == 0) {
                          print("Teacher");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        } else if (index == 1) {
                          print("Student");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeStudent()));
                        }
                      },
                      splashColor: Colors.cyan,
                      child: Container(
                        padding: const EdgeInsets.all(6.0),
                        width: MediaQuery.of(context).size.width / 2,
                        // height: MediaQuery.of(context).size.width/1.5,
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: MediaQuery.of(context).size.width / 2,
                                  child: Image.asset(
                                    dataList[index]["image"],
                                    width:
                                    MediaQuery.of(context).size.width / 2,
                                    height:
                                    MediaQuery.of(context).size.width / 2,
                                    fit: BoxFit.contain,
                                  )),
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                alignment: Alignment.center,
                                child: Text(
                                  dataList[index]["text"],
                                  maxLines: 1,
                                  style: TextStyle(fontSize: 17),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))),
            ),
          ),
        ),
      ),
    );
  }
}
