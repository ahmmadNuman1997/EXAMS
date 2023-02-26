import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'choose_the_correct_answer.dart';

class QuestionSelection extends StatefulWidget {
  const QuestionSelection({Key? key}) : super(key: key);

  @override
  State<QuestionSelection> createState() => _QuestionSelectionState();
}

class _QuestionSelectionState extends State<QuestionSelection> {
  int? selectedItem = 1;
  String? Choose;
  String? Choose1;
  String? Choose2;
  String? Choose3;
  String? Choose4;
  String? checkandclear;
  bool? _isChecked = false;
  bool? _isChecked1 = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width,
      //height: 100,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          //margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 4)),
          child: Container(
            child: Column(
              children: [
                const Center(
                  child: Text('data'),
                ),
                Center(

                  child: DropdownButtonFormField <int>(
                    value: selectedItem,
                    isExpanded: true,
                    iconSize: 36,
                    icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                    style: TextStyle(color: Colors.black),
                    items: const [
                      DropdownMenuItem<int>(
                        value: 1,
                        child: Text('اختر الاجابة الصحيحة',
                            style: TextStyle(color: Colors.black)),
                      ),
                      DropdownMenuItem<int>(
                        value: 2,
                        child: Text('صح ام خطأ'),
                      ),
                      DropdownMenuItem<int>(
                        value: 3,
                        child: Text('اختيار من متعدد'),
                      ),
                      DropdownMenuItem<int>(
                        value: 4,
                        child: Text('مقالي'),
                      ),
                    ],
                    onChanged: (v) {
                      setState(() {
                        selectedItem = v;
                      });
                    },
                  ),
                ),
                if (selectedItem == 1)
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        RadioListTile(
                            title: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                hintText: 'الاجابة 1',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            value: "Choose1",
                            groupValue: Choose,
                            onChanged: (val) {
                              setState(() {
                                Choose = val;
                              });
                            }),
                        RadioListTile(
                            title: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                hintText: 'الاجابة 2',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            value: "Choose2",
                            groupValue: Choose,
                            onChanged: (val) {
                              setState(() {
                                Choose = val;
                              });
                            }),
                        RadioListTile(
                            title: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                hintText: 'الاجابة 3',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            value: "Choose3",
                            groupValue: Choose,
                            onChanged: (val) {
                              setState(() {
                                Choose = val;
                              });
                            }),
                        RadioListTile(
                            title: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                hintText: 'الاجابة 4',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            value: "Choose",
                            groupValue: Choose,
                            onChanged: (val) {
                              setState(() {
                                Choose = val;
                              });
                            }),
                      ],
                    ),
                  ),
                SizedBox(
                  height: 10,
                ),
                if (selectedItem == 2)
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Radio(
                                  value: "check",
                                  groupValue: checkandclear,
                                  onChanged: (val) {
                                    setState(() {
                                      checkandclear = val;
                                    });
                                  }),
                              Text(
                                '',
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              Icon(Icons.check, color: Colors.green, size: 40),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Radio(
                                  value: "clear",
                                  groupValue: checkandclear,
                                  onChanged: (val) {
                                    setState(() {
                                      checkandclear = val;
                                    });
                                  }),
                              Text(
                                '',
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.clear, color: Colors.red, size: 40),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(
                  height: 10,
                ),
                if (selectedItem == 3)
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          CheckboxListTile(
                            title:  TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'الاجابة 1',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                             value: _isChecked,
                             onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked = newValue;
                              });
                            },
                             activeColor: Colors.orangeAccent,
                             checkColor: Colors.white70,
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                          SizedBox(height: 10,),
                          CheckboxListTile(
                            title:  TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'الاجابة 2',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            value: _isChecked1,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked1 = newValue;
                              });
                            },
                            activeColor: Colors.orangeAccent,
                            checkColor: Colors.white70,
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                          SizedBox(height: 10,),
                          CheckboxListTile(
                            title:  TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'الاجابة 3',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            value: _isChecked2,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked2 = newValue;
                              });
                            },
                            activeColor: Colors.orangeAccent,
                            checkColor: Colors.white70,
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                          SizedBox(height: 10,),
                          CheckboxListTile(
                            title:  TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'الاجابة 4',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            value: _isChecked3,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked3 = newValue;
                              });
                            },
                            activeColor: Colors.orangeAccent,
                            checkColor: Colors.white70,
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),

                    ),
                  ),
                SizedBox(height: 10,),
                if (selectedItem == 4)
                  SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
