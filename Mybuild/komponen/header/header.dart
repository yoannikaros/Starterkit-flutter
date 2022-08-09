// import 'package:flutter/material.dart';

// Widget header() {
//   return Flexible(
//     child: Container(
//       margin: EdgeInsets.only(
//           top: defaultMargin, left: defaultMargin, right: defaultMargin),
//       child: Row(
//         children: [
//           Expanded(
//             child: Column(
//               //colum dibungkis expanded
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Hello,' + 'user.displayName!',
//                   style: blackTextStyle.copyWith(
//                       fontSize: 24, fontWeight: semiBold),
//                 ),
//                 Text(
//                   'user.email!',
//                   style: subtitleTextStyle.copyWith(fontSize: 16),
//                 )
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => DetailAkun()),
//               );
//             },
//             child: Container(
//               width: 70,
//               height: 70,
//               child: CircleAvatar(
//                 radius: 40,
//                 backgroundImage: NetworkImage('user.photoURL!'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }