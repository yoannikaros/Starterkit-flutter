// Widget nameInput() {
//   return Container(
//     margin: EdgeInsets.only(top: 50),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Full Name',
//             style: primaryTextStyle.copyWith(
//               fontSize: 16,
//               fontWeight: medium,
//             )),
//         SizedBox(
//           height: 12,
//         ),
//         Container(
//           height: 50,
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           decoration: BoxDecoration(
//               color: backgroundColor2,
//               borderRadius: BorderRadius.circular(12)),
//           child: Center(
//             child: Row(
//               children: [
//                 Image.asset(
//                   'aset/icon_name.png',
//                   width: 17,
//                 ),
//                 SizedBox(
//                   width: 16,
//                 ),
//                 Expanded(
//                   child: TextFormField(
//                     keyboardType: TextInputType.emailAddress,
//                     style: primaryTextStyle,
//                     decoration: InputDecoration.collapsed(
//                         hintText: 'Your Full Name', hintStyle: subtitleTextStyle),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }