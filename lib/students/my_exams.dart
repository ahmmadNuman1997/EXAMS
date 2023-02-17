import 'package:flutter/material.dart';

import 'test_result.dart';

class MyExams extends StatefulWidget {
  @override
  _MyExamsState createState() => _MyExamsState();
}

class _MyExamsState extends State<MyExams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' امتحاناتي '),
        centerTitle: true,
        backgroundColor: Color(0xFF00695C),
      ),
      body:Container(
        
        child: Padding(
          
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            
            children: [
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 200,
              //   color: Color(0xFF00695C),
              // ),
              
              GestureDetector(
                 onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TestResult()));
              },
                child: Container(
                   decoration: BoxDecoration(
                    color: Color(0xFF00695C),
                        borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Text 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Text 2",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Text 3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Text 4",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';

// class MyScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Stack(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: 200,
//               color: Colors.blue,
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: 200,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text(
//                     "Text 1",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                   Text(
//                     "Text 2",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                   Text(
//                     "Text 3",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                   Text(
//                     "Text 4",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }