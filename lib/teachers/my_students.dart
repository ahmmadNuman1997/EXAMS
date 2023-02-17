import 'package:flutter/material.dart';

class MyStudents extends StatefulWidget {
  @override
  _MyStudentsState createState() => _MyStudentsState();
}

class _MyStudentsState extends State<MyStudents> {
  //bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('طلابي'),
        centerTitle: true,
        backgroundColor: Color(0xFF00695C),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Table(/*جدول الطلاب*/
                columnWidths: const {
                  0: FlexColumnWidth(1.8),
                  1: FlexColumnWidth(1), //لحجم عرض صفوف الجدول
                  2: FlexColumnWidth(2),
                  3: FlexColumnWidth(3.5),
                  4: FlexColumnWidth(1),
                },
                border: TableBorder.all(
                    color: Color(0xFF00695C),
                    width: 1.0,
                    style: BorderStyle.solid),
                defaultVerticalAlignment:
                    TableCellVerticalAlignment.middle, // لتوسيط عناصر الجدول
                children: [
                  buildRow(
                      ['المادة', 'المستوى', 'التخصص', 'اسم الطالب', 'الرقم'],
                      isHeader: true),
                  buildRow([
                    // تاخد بياناتها من الدالة
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                  buildRow([
                    'مقدمة برمجة',
                    'الرابع',
                    ' تقنية معلومات',
                    'محمد احمد حسن سيف',
                    '1'
                  ]),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'البريد الالكتروني/الرقم الجامعي ',
                    hintText: '   id as @.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("ارسال"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
    //يحتاج الى شرح وهي دالة ترجع قائمة صف كامل من الاعمدة
    decoration: isHeader
        ? BoxDecoration(color: Color(0xFF00695C))
        : BoxDecoration(), //تلوين الصف الاول
    children: cells.map((cell) {
      final style = TextStyle(
        // جعل الصف الاول غامقا  وايضا لخائص الصف الاول
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: 11,
      );

      return Center(
          child: Text(
        cell,
        style: style,
      ));
    }).toList());
