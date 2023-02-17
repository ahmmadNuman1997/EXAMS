import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';

class ExamQuestions extends StatefulWidget {
  const ExamQuestions({Key? key}) : super(key: key);

  @override
  State<ExamQuestions> createState() => _ExamQuestionsState();
}

class _ExamQuestionsState extends State<ExamQuestions> {
  //File?  _alcamera;
  var _image;
  var imagepicker;

  @override
  void initState() {
    super.initState();
    imagepicker = ImagePicker();
  }

  // Future ImageSelection() async {
  //
  //   final mycamera  = await ImagePicker().getImage(source: ImageSource.camera);
  //   setState(() {
  //     _alcamera = File (mycamera!.path) ;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7.0),
      height: MediaQuery.of(context).size.height,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          shrinkWrap: true,
          dragStartBehavior: DragStartBehavior.start,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            Column(
              children: <Widget>[
                Text(
                  'data',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: TextField(
                //keyboardType: TextInputType.number,
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                decoration: InputDecoration(
                  labelText: "السؤال",
                  hintText: "اكتب السؤال هنا",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _image != null
                      ? Image.file(
                          _image,
                          width: 200,
                          height: 200,
                        )
                      : SizedBox(
                          height: 20,
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: Text(
                          'اضف صورة للسؤال',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () async {
                          XFile? image = await imagepicker.pickImage(
                              source: ImageSource.camera);
                          setState(() {
                            if (image != null) {
                              _image = File(image.path);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('لم يتم التقاط الصورة')));
                            }
                          });
                        },
                        // child: const  Text('اضافة صورة للسؤال'),
                      ),
                      ElevatedButton(
                        child: Text(
                          ' اضف صورة للسؤال من الاستديو',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () async {
                          XFile? image = await imagepicker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            if (image != null) {
                              _image = File(image.path);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('لم يتم اختيارالصورة')));
                            }
                          });
                        },
                        //child: const  Text('اضافة صورة ff'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
