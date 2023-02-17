import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('النتائج'),
        centerTitle: true,
        backgroundColor: Color(0xFF00695C),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(0.8),
                1: FlexColumnWidth(0.8),
                2: FlexColumnWidth(2),
                3: FlexColumnWidth(3.5),
                4: FlexColumnWidth(1),
              },
              border: TableBorder.all(
                  color: Color(0xFF00695C),
                  width: 1.0,
                  style: BorderStyle.solid),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                buildRow(
                    ['التقدير', 'النتيجة', 'المادة', 'اسم الطالب', 'الرقم'],
                    isHeader: true),
                buildRow(['راسب', '4', 'برمجة 1', 'محمد احمد حسن سيف', '1']),
                buildRow(['راسب', '4', 'برمجة 1', 'محمد احمد حسن سيف', '1']),
                buildRow(['راسب', '4', 'برمجة 1', 'محمد احمد حسن سيف', '1']),
                buildRow(['راسب', '4', 'برمجة 1', 'محمد احمد حسن سيف', '1']),
                buildRow(['راسب', '4', 'برمجة 1', 'محمد احمد حسن سيف', '1']),
                buildRow(['راسب', '4', 'برمجة 1', 'محمد احمد حسن سيف', '1']),
                buildRow(['راسب', '4', 'برمجة 1', 'محمد احمد حسن سيف', '1']),
                buildRow(['راسب', '4', 'برمجة 1', 'محمد احمد حسن سيف', '1']),
                buildRow(['راسب', '4', 'برمجة 1', 'محمد احمد حسن سيف', '1']),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("فرز"),
                  ),
                ),
                Checkbox(
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
                Text('نصفي'),
                Checkbox(
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
                Text('نهائي'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
    decoration:
        isHeader ? BoxDecoration(color: Color(0xFF00695C)) : BoxDecoration(),
    children: cells.map((cell) {
      final style = TextStyle(
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: 11,
      );

      return Center(
          child: Text(
        cell,
        style: style,
      ));
    }).toList());
 
    
  //  TableRow(
  //             decoration: BoxDecoration(color: Color(0xFF00695C)),
  //             children: [
  //               Center(
  //                 child: TableCell(
  //                   child: Text('التقدير',
  //                       style: TextStyle(color: Colors.black, fontSize: 11)),
  //                 ),
  //               ),
  //               Center(
  //                 child: TableCell(
  //                   child: Text('النتيجة',
  //                       style: TextStyle(color: Colors.black, fontSize: 11)),
  //                 ),
  //               ),
  //               Center(
  //                 child: TableCell(
  //                   child: Text('المادة',
  //                       style: TextStyle(color: Colors.black, fontSize: 11)),
  //                 ),
  //               ),
  //               Center(
  //                 child: TableCell(
  //                   child: Text('اسم الطالب',
  //                       style: TextStyle(color: Colors.black, fontSize: 11)),
  //                 ),
  //               ),
  //               Center(
  //                 child: TableCell(
  //                   child: Text('الرقم',
  //                       style: TextStyle(color: Colors.black, fontSize: 11)),
  //                 ),
  //               ),
  //             ],
  //           ),
  //           TableRow(
  //             children: [
  //               Center(
  //                 child: TableCell(
  //                   child: Text(
  //                     'راسب',
  //                     style: TextStyle(fontSize: 10),
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: TableCell(
  //                   child: Text(
  //                     '4',
  //                     style: TextStyle(fontSize: 10),
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: TableCell(
  //                   child: Text(
  //                     'برمجة 1',
  //                     style: TextStyle(fontSize: 10),
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: TableCell(
  //                   child: Text(
  //                     ' محمداحمدحسن سيف',
  //                     style: TextStyle(fontSize: 10),
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: TableCell(
  //                   child: Text(
  //                     '1',
  //                     style: TextStyle(fontSize: 10),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),