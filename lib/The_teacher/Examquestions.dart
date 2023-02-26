import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'Choices/Options_to_add/Question_Selection.dart';
import 'Choices/Options_to_add/choose_the_correct_answer.dart';

class ExamQuestions extends StatefulWidget {
  const ExamQuestions({Key? key}) : super(key: key);

  @override
  State<ExamQuestions> createState() => _ExamQuestionsState();
}

class _ExamQuestionsState extends State<ExamQuestions> {
  bool _load = false;
  late File imgFile;
  final imgPicker = ImagePicker();

  Widget displayImage() {
    if (imgFile == null) {
      return Text('No image Selected');
    } else {
      return Image.file(
        imgFile,
        width: 350,
        height: 330,
      );
    }
  }

  void openCamera() async {
    var imgCamera = await imgPicker.getImage(source: ImageSource.camera);
    setState(() {
      imgFile = File(imgCamera!.path);
      _load = true;
    });
    Navigator.of(context).pop();
  }

  void openGallery() async {
    var imGallery = await imgPicker.getImage(source: ImageSource.gallery);
    setState(() {
      _load = true;
      imgFile = File(imGallery!.path);
    });
    Navigator.of(context).pop();
  }

  Future<void> showOptionsDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Options'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text('Capture Image Form camare'),
                    onTap: () {
                      openCamera();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                    child: Text('Capture Image Form gallery'),
                    onTap: () {
                      openGallery();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
  //String? selectedItem = 'items 1';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'data',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: TextField(
                //keyboardType: TextInputType.number,
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                //style: ArabicTextStyle(arabicFont: ArabicFont.dubai,fontSize:25),
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
            _load ? displayImage() : SizedBox(),
            ElevatedButton(
              onPressed: () {
                showOptionsDialog(context);
              },
              child: Text('Slieect Yor Image'),
            ),
            SizedBox(
              height: 7,
            ),
            QuestionSelection(),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 7,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ExamQuestions()));

                        // Navigator.of(context).push(
                        //     MaterialPageRoute(
                        //       builder: (_) => ExamQuestions(),
                        //     )).then((value) => Navigator.pop(context));
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (BuildContext context) => ExamQuestions()));

                        // Navigator
                        //     .of(context)
                        //     .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) {
                        //   return new ExamQuestions();
                        // }));
                        // Navigator.of(context).push
                        //   (new MaterialPageRoute<ExamQuestions>(
                        //     builder: (BuildContext context ) {
                        //     return new ExamQuestions();
                        // }));

                        //   MaterialPageRoute(
                        //       builder: (context) => ExamQuestions()));
                        // // Navigator.push(context).push(MaterialPageRoute(
                        // //     builder: (context) => ExamQuestions()
                        // ));
                      },
                      child: const Text("اضف hhhhhسؤال"),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white70,
                        fixedSize: Size.fromWidth(100),
                        backgroundColor: Colors.blue.shade500,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("حفظ مؤقت"),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white70,
                        fixedSize: Size.fromWidth(100),
                        backgroundColor: Colors.blue.shade500,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("انشاء"),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white70,
                        fixedSize: Size.fromWidth(100),
                        backgroundColor: Colors.blue.shade500,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 50),
            //   child: Container(
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 50),
            //         child: OutlinedButton(
            //           onPressed: () {},
            //           child: const Text("data"),
            //           style: OutlinedButton.styleFrom(
            //             primary: Colors.white70,
            //             backgroundColor: Colors.orangeAccent,
            //           ),
            //         ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
