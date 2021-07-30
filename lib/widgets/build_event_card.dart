// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class buildCard extends StatefulWidget {
//   @override
//   _buildCardState createState() => _buildCardState();
// }
//
// class _buildCardState extends State<buildCard> {
//   String eventText;
//   String eventPrice;
//   bool checkboxValue;
//
//   @override
//   Widget build(BuildContext context) {
//     bool pressAttention=false;
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height * 0.13,
//       child: Card(
//         elevation: 4,
//         color: pressAttention ? Colors.deepPurpleAccent: Colors.white,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(10),
//               topRight: Radius.circular(10),
//               bottomLeft: Radius.circular(10),
//               topLeft: Radius.circular(10),
//             ),
//             side: BorderSide(width: 2.5, color: Colors.deepPurpleAccent)
//         ),
//
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     eventText,
//                     style: GoogleFonts.mcLaren(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: pressAttention ? Colors.white : Colors.black,
//                     ),
//                   ),
//
//                   Text(
//                     eventPrice,
//                     style: TextStyle(
//                       fontSize:25,
//
//                       color: pressAttention ? Colors.white : Colors.black,
//                     ),
//                   ),
//
//                 ],
//               ),
//               RaisedButton(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(4),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       pressAttention=!pressAttention;
//                       checkboxValue=!checkboxValue;
//                     });
//                   },
//                   child:Text(
//                     'Select',
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.deepPurple,
//                     ),
//                   )
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
