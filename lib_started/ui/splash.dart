// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'theme.dart';
// class SplashPage extends StatefulWidget {
//   const SplashPage({Key? key}) : super(key: key);

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     Timer(Duration(seconds: 3), ()=> Navigator.pushNamed(context,'/main')
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor1,
//       body: Center(
//         child: Container(
//           margin: EdgeInsets.only(top: 50),
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Text(
//                  'TOKO LINA',
//                  style: primaryTextStyle.copyWith(
//                    fontSize: 40,
//                    fontWeight: FontWeight.bold,
//                  )
//              ),
//            ],
//          ),
//         ),
//       ),
//     );
//   }
// }