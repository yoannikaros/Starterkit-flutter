// import 'package:flutter/material.dart';
// import 'package:tokolina/shared/theme.dart';
// import 'package:tokolina/ui/page_one/pgone.dart';
// import 'package:tokolina/ui/page_three/pgthree.dart';
// import 'package:tokolina/ui/page_two/pgtwo.dart';

// class MainPage extends StatefulWidget {
//   //dari stateless ke statefu
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int currentIndex =
//       0; //halaman pertama kali untuk muncul sekaligus membuat efek tombol berpindah

//   @override
//   Widget build(BuildContext context) {
//     Widget customBottomNav() {
//       return Container(
//         decoration: BoxDecoration(color: Colors.black, boxShadow: [
//           BoxShadow(color: Colors.black, offset: Offset(0.0, 10.0))
//         ]),
//         child: ClipRRect(
//           // borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
//           child: BottomAppBar(
//             clipBehavior: Clip.antiAlias,
//             child: BottomNavigationBar(
//               currentIndex: currentIndex,
//               onTap: (value) {
//                 setState(() {
//                   currentIndex = value;
//                 });
//               },
//               backgroundColor: Colors.white,
//               type: BottomNavigationBarType.fixed,
//               items: [
//                 //membuat icon di navigasi
//                 BottomNavigationBarItem(
//                   icon: Container(
//                     margin: EdgeInsets.only(top: 15, bottom: 5),
//                     child: Image.asset(
//                       'aset/icon_home.png',
//                       width: 25,
//                       color:
//                           currentIndex == 0 ? primaryColor : Color(0xff808191),
//                     ),
//                   ),
//                   label: '',
//                 ),

//                 BottomNavigationBarItem(
//                   icon: Container(
//                     margin: EdgeInsets.only(top: 15, bottom: 5),
//                     child: Image.asset(
//                       'aset/icon_riwayat.png',
//                       width: 25,
//                       color: currentIndex == 1
//                           ? primaryColor
//                           : Color(0xff808191), //Ganti warna saat di klik
//                     ),
//                   ),
//                   label: '',
//                 ),

//                 //membuat icon di navigasi
//                 BottomNavigationBarItem(
//                   icon: Container(
//                     margin: EdgeInsets.only(top: 15, bottom: 5),
//                     child: Image.asset(
//                       'aset/icon_profile.png',
//                       width: 18,
//                       color: currentIndex == 2
//                           ? primaryColor
//                           : Color(0xff808191), //Ganti warna saat di klik
//                     ),
//                   ),
//                   label: '',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     }

//     Widget body() {
//       switch (currentIndex) {
//         case 0:
//           return PageSatu();
//           break;
//         case 1:
//           return PageTwo();
//           break;
//         case 2:
//           return PageThree();
//           break;
//         default:
//           return PageSatu();
//       }
//     }

//     return Scaffold(
//       backgroundColor: Colors.white, //warna background
//       bottomNavigationBar: customBottomNav(), //navigasi bawah
//       body: body(),
//     );
//   }
// }
