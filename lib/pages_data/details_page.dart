// import 'package:bloc_pattern_full_code/data/models/models.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class DetailsPage extends StatefulWidget {
//   Articles articlesData;
//   DetailsPage({required this.articlesData});

//   @override
//   State<DetailsPage> createState() => _DetailsPageState();
// }

// class _DetailsPageState extends State<DetailsPage> {
//   @override
//   Widget build(BuildContext context) {
//     var datetime = DateTime.parse(widget.articlesData.publishedAt!);
//     var dateTimeFormate =
//         DateFormat("EEEE, MMM yyyy, hh:mm aaa").format(datetime);
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       // appBar: AppBar(),
//       backgroundColor: Colors.transparent,
//       body: Stack(
//         children: [
//           Stack(
//             children: [
//               Image.network(
//                 widget.articlesData.urlToImage!,
//                 height: 300,
//                 fit: BoxFit.fill,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 30.0, left: 15),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Container(
//                     height: 40,
//                     width: 40,
//                     child: Icon(
//                       Icons.arrow_back_ios_new_rounded,
//                       color: Colors.black,
//                     ),
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.white.withOpacity(0.5)),
//                   ),
//                 ),
//               )
//             ],
//           ),
//           Container(
//             margin: EdgeInsets.only(top: size.height * 0.32),
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30), topRight: Radius.circular(30)),
//             ),
//             width: size.width,
//             child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     dateTimeFormate,
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 14,
//                         fontWeight: FontWeight.normal),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     widget.articlesData.title!,
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 30,
//                     child: Divider(
//                       color: Colors.black38,
//                       thickness: 1,
//                     ),
//                   ),
//                   Text(
//                     widget.articlesData.description!,
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 14,
//                         fontWeight: FontWeight.normal),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     widget.articlesData.content!,
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 14,
//                         fontWeight: FontWeight.normal),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
