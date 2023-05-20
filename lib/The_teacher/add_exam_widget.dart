import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'Choices/Options_to_add/Question_Selection.dart';
import 'add_exam_model.dart';

class ExamQuestionsWidget extends StatefulWidget {
  Exam ?exam;
  ExamQuestionsWidget({Key? key,this.exam}) : super(key: key);

  @override
  State<ExamQuestionsWidget> createState() => _ExamQuestionsState();
}

class _ExamQuestionsState extends State<ExamQuestionsWidget> {
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if( widget.exam!=null&& widget.exam?.image!=null){
      setState(() {
        imgFile=File("${widget.exam?.image}");
        _load=true;
      });
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'السؤال رقم(1)',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: TextField(
                style: GoogleFonts.robotoCondensed(fontSize: 15),
                decoration: InputDecoration(
                  labelText: "السؤال",
                  hintText:  widget.exam!=null?"اكتب السؤال هنا": widget.exam?.name,
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
          ],
        ),
      ),
    );
  }
}
