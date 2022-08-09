// import 'package:flutter/material.dart';
// import '../../shared/theme.dart';

// class SignUpPage extends StatelessWidget {
//   const SignUpPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Widget title() {
//       return Container(
//         margin: EdgeInsets.only(top: 30),
//         child: Text(
//           'Daftar Sekarang',
//           style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 24),
//         ),
//       );
//     }

//     Widget inputSection() {
//       Widget nameInput() {
//         return Container(
//           margin: EdgeInsets.only(bottom: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Full Name'),
//               SizedBox(
//                 height: 6,
//               ),
//               TextFormField(
//                 cursorColor: kBlackColor,
//                 decoration: InputDecoration(
//                     hintText: 'Your Full Name',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(defaultRadius)),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(defaultRadius),
//                         borderSide: BorderSide(color: kPrimaryColor))),
//               )
//             ],
//           ),
//         );
//       }

//       Widget emailInput() {
//         return Container(
//           margin: EdgeInsets.only(bottom: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Email'),
//               SizedBox(
//                 height: 6,
//               ),
//               TextFormField(
//                 cursorColor: kBlackColor,
//                 decoration: InputDecoration(
//                     hintText: 'Your Email',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(defaultRadius)),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(defaultRadius),
//                         borderSide: BorderSide(color: kPrimaryColor))),
//               )
//             ],
//           ),
//         );
//       }

//       Widget passwordInput() {
//         return Container(
//           margin: EdgeInsets.only(bottom: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Password'),
//               SizedBox(
//                 height: 6,
//               ),
//               TextFormField(
//                 obscureText: true,
//                 cursorColor: kBlackColor,
//                 decoration: InputDecoration(
//                     hintText: 'Your Password',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(defaultRadius)),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(defaultRadius),
//                         borderSide: BorderSide(color: kPrimaryColor))),
//               )
//             ],
//           ),
//         );
//       }

//       Widget hobiInput() {
//         return Container(
//           margin: EdgeInsets.only(bottom: 30),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Hobi'),
//               SizedBox(
//                 height: 6,
//               ),
//               TextFormField(
//                 cursorColor: kBlackColor,
//                 decoration: InputDecoration(
//                     hintText: 'Your Hobby',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(defaultRadius)),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(defaultRadius),
//                         borderSide: BorderSide(color: kPrimaryColor))),
//               )
//             ],
//           ),
//         );
//       }

//       Widget GetStartedButton() {
//         return Container(
//           width: double.infinity,
//           height: 55,
//           child: TextButton(
//             onPressed: () {
//               Navigator.pushNamed(context, '/bonus');
//             },
//             style: TextButton.styleFrom(
//                 backgroundColor: kPrimaryColor,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(defaultRadius))),
//             child: Text(
//               'Get Started',
//               style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
//             ),
//           ),
//         );
//       }

//       Widget tacButtom() {
//         return Container(
//           alignment: Alignment.center,
//           margin: EdgeInsets.only(top: 50, bottom: 73),
//           child: Text(
//             'Term and Condition',
//             style: greyTextStyle.copyWith(
//                 fontSize: 16,
//                 fontWeight: light,
//                 decoration: TextDecoration.underline),
//           ),
//         );
//       }

//       return Container(
//         margin: EdgeInsets.only(top: 30),
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//         decoration: BoxDecoration(
//             color: kWhiteColor,
//             borderRadius: BorderRadius.circular(defaultRadius)),
//         child: Column(
//           children: [
//             nameInput(),
//             emailInput(),
//             passwordInput(),
//             hobiInput(),
//             GetStartedButton(),
//             tacButtom()
//           ],
//         ),
//       );
//     }

//     return Scaffold(
//       backgroundColor: kBackgroundColor,
//       body: SafeArea(
//         child: ListView(
//           padding: EdgeInsets.symmetric(horizontal: defaultMargin),
//           children: [title(), inputSection()],
//         ),
//       ),
//     );
//   }
// }
