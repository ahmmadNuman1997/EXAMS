import 'package:flutter/material.dart';
import 'exams.dart';

class AddExam extends StatefulWidget {
//  const Example({Key? key}) : super(key: key);
  @override
  State<AddExam> createState() => _AddExamState();
}


class _AddExamState extends State<AddExam> {
  dynamic dropdownValue_type_exam;
  dynamic dropdownValue_supject;
  dynamic dropdownValue1; //من الفيديو رقم 38

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           title: Text('انشاء اختبار'),
        centerTitle: true,
        backgroundColor: Color(0xFF00695C),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //حقل لعنوان الاختبار
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'عنوان الاختبار ',
                      hintText: 'اختبار ايااياتست تبتسيات'),
                ),
              ),
              //حقل لنوع الاختبار
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10, bottom: 0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  hint: Text('حدد نوع الاختيار'),
                  // value: dropdownValue,
                  items: <String>[
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'District Of Columbia',
                    'Florida'
                  ].map<DropdownMenuItem<String>>((String e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue_type_exam = newValue!;
                    });
                  },
                  value: dropdownValue_type_exam,
                ),
              ),

              //حقل لمادة الاختبار
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10, bottom: 0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  hint: Text('حدد مادة الاختبار '),
                  // value: dropdownValue,
                  items: <String>[
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'District Of Columbia',
                    'Florida'
                  ].map<DropdownMenuItem<String>>((String e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue_supject = newValue!;
                    });
                  },
                  value: dropdownValue_supject,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10, bottom: 0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  hint: Text('حدد الاختيار'),
                  // value: dropdownValue,
                  items: <String>[
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'District Of Columbia',
                    'Florida'
                  ].map<DropdownMenuItem<String>>((String e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  value: dropdownValue1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10, bottom: 0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  hint: Text('حدد الاختيار'),
                  // value: dropdownValue,
                  items: <String>[
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'District Of Columbia',
                    'Florida'
                  ].map<DropdownMenuItem<String>>((String e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  value: dropdownValue1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10, bottom: 0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  hint: Text('حدد الاختيار'),
                  // value: dropdownValue,
                  items: <String>[
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'District Of Columbia',
                    'Florida'
                  ].map<DropdownMenuItem<String>>((String e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  value: dropdownValue1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10, bottom: 0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  hint: Text('حدد الاختيار'),
                  // value: dropdownValue,
                  items: <String>[
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'District Of Columbia',
                    'Florida'
                  ].map<DropdownMenuItem<String>>((String e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  value: dropdownValue1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10, bottom: 0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  hint: Text('حدد الاختيار'),
                  // value: dropdownValue,
                  items: <String>[
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'District Of Columbia',
                    'Florida'
                  ].map<DropdownMenuItem<String>>((String e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  value: dropdownValue1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10, bottom: 0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  hint: Text('حدد الاختيار'),
                  // value: dropdownValue,
                  items: <String>[
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'District Of Columbia',
                    'Florida'
                  ].map<DropdownMenuItem<String>>((String e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  value: dropdownValue1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10, bottom: 20),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  hint: Text('حدد الاختيار'),
                  // value: dropdownValue,
                  items: <String>[
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'District Of Columbia',
                    'Florida'
                  ].map<DropdownMenuItem<String>>((String e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text("$e"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  value: dropdownValue1,
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xFF00695C),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Exams()));
                  },
                  child: Text(
                    'انشاء اختبار',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}


