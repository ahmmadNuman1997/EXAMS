import 'package:exams/The_teacher/the_basic.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../Drawerhiden/Drawer_widget.dart';
class HomeScreen extends StatefulWidget {
  VoidCallback opendrawer;
  double animationtime;
  HomeScreen({required this.opendrawer, required this.animationtime});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.black87,
      key: scaffoldKey,
      drawer:
      DrawerWidget(closdDrawer: () {
        scaffoldKey.currentState?.closeDrawer(); // <-- Opens drawer.
      },
      ),
      drawerEnableOpenDragGesture: false,
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    "                     Exam",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(onPressed: (){
                    scaffoldKey.currentState?.openDrawer(); // <-- Opens drawer.

                  }, icon: RotatedBox(
                    quarterTurns: 135,
                    child: Icon(
                      Icons.bar_chart_rounded,
                      size: 28,
                      color: Colors.indigo,
                    ),
                  ),)
                ],
              ),
              Expanded(
                child: ListView(

                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/Mentimeter_VisualAssets.png",
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                     Center(
                      child:AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Hello Teacher',
                            speed: Duration(milliseconds: 200),
                            textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        displayFullTextOnTap: true,
                        stopPauseOnTap: false,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _cardMenu(
                              title: " الاختبارات",
                              fontColor: Colors.black87,
                              icon: "assets/images_(11).jpg"),
                          _cardMenu(
                            onTap: () {
                              Navigator.of(context,rootNavigator:true ).push(
                                  // context,

                                  MaterialPageRoute(
                                      builder: (context) => TabBarExample()));
                            },
                            title: "إنشاء اختبار",
                            icon: "assets/Test-creation-icon.jpg",
                            fontColor: Colors.black87,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                    // const SizedBox(
                    //   height: 19,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     _cardMenu(
                    //         title: "WATER", icon: "assets/Electronic_exams1.png"),
                    //     _cardMenu(
                    //         title: "ENTERTAINMENT",
                    //         icon: "assets/Electronic_exams1.png"),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardMenu({
    required String title,
    required String icon,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color fontColor = Colors.grey,
  }) {
    return Padding(padding: EdgeInsets.all(9),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 36,
        ),
        width: MediaQuery.of(context).size.width/2 -36,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Image.asset(icon),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, color: fontColor),
            )
          ],
        ),
      ),
    ),
    );
  }
}
