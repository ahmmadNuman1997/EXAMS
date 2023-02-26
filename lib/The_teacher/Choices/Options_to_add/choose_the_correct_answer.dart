// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class ChooseCorrect extends StatefulWidget {
//   const ChooseCorrect({Key? key}) : super(key: key);
//
//   @override
//   State<ChooseCorrect> createState() => _ChooseCorrectState();
// }
//
// class _ChooseCorrectState extends State<ChooseCorrect> {
//   String? choose1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//
//       height: 300,
//       child: Center(
//
//         child: Padding(
//           padding: const EdgeInsets.all(
//             79.0,
//           ),
//           child: Column(
//
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//
//               Radio(
//                   value: "selectedItem",
//                   groupValue: choose1,
//                   onChanged: (val) {
//                     setState(() {
//                       choose1 = val;
//                     });
//                   }),
//               Text(
//                 "عام",
//                 style: GoogleFonts.robotoCondensed(
//                   fontSize: 12.5,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
