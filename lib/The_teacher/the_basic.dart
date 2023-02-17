import 'package:exams/The_teacher/Examquestions.dart';
import 'package:exams/The_teacher/Examsettings.dart';
import 'package:exams/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddExem extends StatefulWidget {
  //const AddExem({super.key});
  const AddExem({Key? key}) : super(key: key);

  @override
  State<AddExem> createState() => _AddExemState();
}

class _AddExemState extends State<AddExem> with SingleTickerProviderStateMixin {

  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length:4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,child:Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        //backgroundColor: const Color(0xFF128a7e),
        title: const Text("البيانات الاساسية"),

        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: const [

            Tab(text: 'اعداد الاختبار'),
            Tab(text: 'اسئلة الاختبار'),
            Tab(text: 'معاينة الاختبار'),
          ],
          controller: tabController,
        ),
      ),
      body: TabBarView(
        children: const [
          ExamSettings(),
          ExamQuestions(),
          //Chats(),
          //Status(),
          //Calls(),
        ],
        controller: tabController,
      ),
    ),
    );
  }
}
