// import 'dart:ffi';
// import 'package:adopt/auth/sign_in_page.dart';
// import 'package:adopt/cardwidget/login_card.dart';
// import 'package:adopt/home/main_page.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// //landing page
// class LandingPage extends StatelessWidget {
//   const LandingPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, //menghilangkan banner debug
//       title: 'Edopt',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Edopt'),
//     );
//   }
// }
//
// class Home extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final controller = PageController();
//   bool isLastPage = false;
//
//   @override
//   void dispose(){
//     controller.dispose();
//
//     super.dispose();
//   }
//
//   Widget buildPage({
//     required Color color,
//     required String urlImage,
//     required String title,
//     required String subtitle,
//   }) =>
//       Container(
//         color: color,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 20),
//             Text(
//               title,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 50,
//                   fontWeight: FontWeight.bold
//               ),
//             ),
//             const SizedBox(height: 20),
//             Image.asset(
//                 urlImage,
//                 fit: BoxFit.cover,
//                 width: double.infinity),
//             const SizedBox(height: 20),
//             Container(
//               padding: const EdgeInsets.symmetric(),
//               child: Text(
//                 subtitle,
//                 style: const TextStyle(color: Colors.white,
//                     fontSize: 20
//                 ),
//               ),
//             )
//           ],
//         ),
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( //widget utama untuk membuat sebuah halaman
//       body: Container(
//         padding: const EdgeInsets.only(bottom: 80),
//         child: PageView(
//           controller: controller,
//           onPageChanged: (index) {
//             setState(() => isLastPage = index == 2);
//           },
//           children: [
//             buildPage(
//                 color: Colors.blue,
//                 urlImage: 'aset/ebook.png',
//                 title: 'Introduction,',
//                 subtitle: 'Cara baru adopsi anak impian anda'
//             ),
//             buildPage(
//                 color: Colors.blue,
//                 urlImage: 'aset/learn.png',
//                 title: 'Introduction',
//                 subtitle: 'A new way to adopt your dream child'
//             ),
//             buildPage(
//                 color: Colors.blue,
//                 urlImage: 'aset/readingbook.png',
//                 title: 'Convenient',
//                 subtitle: 'with filling the criteria available'
//             ),
//           ],
//         ),
//       ),
//       bottomSheet:
//       isLastPage
//           ? TextButton(
//         style: TextButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(0),
//             ),
//             primary: Colors.white,
//             backgroundColor: Color.fromARGB(255, 16, 73, 102),
//             minimumSize: const Size.fromHeight(80)
//         ),
//         child: const Text('Get Started', style: TextStyle(fontSize: 24),
//         ),
//         onPressed: () async {
//           Navigator.of(context).pushReplacement(
//             MaterialPageRoute(builder: (context) => LoginAkun()),
//           );
//         },
//       )
//           : Container(
//         padding: const EdgeInsets.symmetric(horizontal: 170),
//         height: 150,
//         color: Colors.blue,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Center(
//               child: SmoothPageIndicator(
//                 controller: controller,
//                 count: 3,
//                 effect: WormEffect(
//                     dotColor: Colors.white,
//                     activeDotColor: Colors.white
//                 ),
//                 onDotClicked: (index) => controller.animateToPage(
//                     index,
//                     duration: const Duration(milliseconds: 500),
//                     curve: Curves.easeIn
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
