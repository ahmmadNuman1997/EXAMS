import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamSettings extends StatefulWidget {
  const ExamSettings({Key? key}) : super(key: key);

  @override
  State<ExamSettings> createState() => _ExamSettingsState();
}

class _ExamSettingsState extends State<ExamSettings> {
  String? country;
  String? publish;
  String? hideall;
  String? showcorrectness;
  String? showthedegree;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          shrinkWrap: true,
          dragStartBehavior: DragStartBehavior.start,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            SizedBox(
              height: 90,
              child: TextField(
                //keyboardType: TextInputType.number,
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                decoration: InputDecoration(
                  labelText: "أسم الاختبار",
                  hintText: "ادخل اسم الاختبار هنا",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                        strokeAlign: StrokeAlign.outside,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
              child: TextField(
                //keyboardType: TextInputType.number,
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                decoration: InputDecoration(
                  labelText: "وصف الاختبار(اختياري)",
                  hintText: "ادخل وصف الاختبار هنا",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                        strokeAlign: StrokeAlign.outside,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
              child: TextField(
                //keyboardType: TextInputType.number,
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                decoration: InputDecoration(
                  labelText: " السنةالدراسية",
                  hintText: "اكتب السنةالدراسيةهنا",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                        strokeAlign: StrokeAlign.outside,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
              child: TextField(
                //keyboardType: TextInputType.number,
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                decoration: InputDecoration(
                  labelText: "اسم المادة",
                  hintText: "اكتب هنا اسم المادة",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                        strokeAlign: StrokeAlign.outside,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
              child: TextField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                decoration: InputDecoration(
                  labelText: "وقت الاختبار بالدقائق",
                  hintText: "ادخل وقت الاختبار",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                        strokeAlign: StrokeAlign.outside,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
              child: TextField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                decoration: InputDecoration(
                  labelText: "عدد محاولات الطالب لدخول الاختبار",
                  hintText: "ادخل عدد محاولات الطالب لدخول الاختبار",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                        strokeAlign: StrokeAlign.outside,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            //SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                //onTap: signIn,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      'الذهاب لاضافة الاسئلة وانشاء الاختبار',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,

                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    indent: 7.0,
                    color: Colors.black54,
                  )),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                    child: Text('الاعدادات الاضافية (اختياري)'),
                  ),
                  Expanded(
                      child: Divider(
                    indent: 1.0,
                    color: Colors.black54,
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                decoration: InputDecoration(
                  labelText: "نسبة النجاح الافتراضية 50%",
                  hintText: " نسبة النجاح 50%",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                        strokeAlign: StrokeAlign.outside,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(1),
              //padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Text(
                      'هل الاختبار عام متاح للجميع او خاص بكلمة سر',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: <Widget> [
                        Radio(
                            value: "general",
                            groupValue: country,
                            onChanged: (val) {
                              setState(() {
                                country = val;
                              });
                            }),
                        Text(
                          "عام",
                           style: GoogleFonts.robotoCondensed(
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 90,),
                        Radio(
                            value: "private",
                            groupValue: country,
                            onChanged: (val) {
                              setState(() {
                                country = val;
                              });
                            }),
                        Text(
                          "خاص",
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17,),
            Padding(
              padding: EdgeInsets.all(1),
              //padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Text(
                      'هل تريد نشر الاختبار ليظهر للطلاب الان ام لاحقا ',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: <Widget> [
                        Radio(
                            value: "private",
                            groupValue: publish,
                            onChanged: (val) {
                              setState(() {
                                publish = val;
                              });
                            }),
                        Text(
                          "نشر الان",
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 60,),
                        Radio(
                            value: "no private",
                            groupValue: publish,
                            onChanged: (val) {
                              setState(() {
                                publish = val;
                              });
                            }),
                        Text(
                          "النشر لاحقا",
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(1),
              //padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Text(
                      'خيارات مابعد الاختبار ',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: <Widget> [
                        Radio(
                            value: "hideall",
                            groupValue: hideall,
                            onChanged: (val) {
                              setState(() {
                                hideall = val;
                              });
                            }),
                        Text(
                          "عدم إضهار الإجابات الصحيحة ودرجة الطالب",
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: <Widget> [
                        Radio(
                            value: "showcorrectness",
                            groupValue: hideall,
                            onChanged: (val) {
                              setState(() {
                                hideall = val;
                              });
                            }),
                        Text(
                           'إضهار الإجابات الصحيحة',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: <Widget> [
                        Radio(
                            value: "showthedegree",
                            groupValue: hideall,
                            onChanged: (val) {
                              setState(() {
                                hideall = val;
                              });
                            }),
                        Text(
                          'إضهار الدرجة للطالب',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(width: 30,),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
