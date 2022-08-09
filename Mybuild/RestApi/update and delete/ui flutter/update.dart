// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Edit extends StatefulWidget {
//   Edit({
//     required this.kode_item,
//   });

//   String kode_item;

//   @override
//   State<Edit> createState() => _EditState();
// }

// class _EditState extends State<Edit> {
//   final _formKey = GlobalKey<FormState>();

//   //inisialize field
//   var barang = TextEditingController();
//   var jenis = TextEditingController();
//   var hargaumum = TextEditingController();
//   var hargagrosir = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     //in first time, this method will be executed
//     _getData();
//   }

//   //Http to get detail data
//   Future _getData() async {
//     try {
//       final response = await http.get(Uri.parse(
//           //you have to take the ip address of your computer.
//           //because using localhost will cause an error
//           //get detail data with id
//           "http://192.168.100.37/baru/barang/api/detail.php?kode_item='${widget.kode_item}'"));

//       // if response successful
//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         setState(() {
//           barang = TextEditingController(text: data['barang']);
//           jenis = TextEditingController(text: data['jenis']);
//           hargaumum = TextEditingController(text: data['hargaumum']);
//           hargagrosir = TextEditingController(text: data['hargagrosir']);
//         });
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   Future _onUpdate(context) async {
//     try {
//       return await http.post(
//         Uri.parse("http://192.168.100.37/baru/barang/api/update.php"),
//         body: {
//           "kode_item": widget.kode_item,
//           "barang": barang.text,
//           "jenis": jenis.text,
//           "hargaumum": hargaumum.text,
//           "hargagrosir": hargagrosir.text
//         },
//       ).then((value) {
//         //print message after insert to database
//         //you can improve this message with alert dialog
//         var data = jsonDecode(value.body);
//         print(data["message"]);

//         Navigator.of(context)
//             .pushNamedAndRemoveUntil('/main', (Route<dynamic> route) => false);
//       });
//     } catch (e) {
//       print(e);
//     }
//   }

//   Future _onDelete(context) async {
//     try {
//       return await http.post(
//         Uri.parse("http://192.168.100.37/baru/barang/api/delete.php"),
//         body: {
//           "kode_item": widget.kode_item,
//         },
//       ).then((value) {
//         //print message after insert to database
//         //you can improve this message with alert dialog
//         var data = jsonDecode(value.body);
//         print(data["message"]);

//         // Remove all existing routes until the home.dart, then rebuild Home.
//         Navigator.of(context)
//             .pushNamedAndRemoveUntil('/main', (Route<dynamic> route) => false);
//       });
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Ubah data " + barang.text),
//         // ignore: prefer_const_literals_to_create_immutables
//         actions: [
//           Container(
//             padding: EdgeInsets.only(right: 20),
//             child: IconButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       //show dialog to confirm delete data
//                       return AlertDialog(
//                         content: Text('Are you sure you want to delete this?'),
//                         actions: <Widget>[
//                           ElevatedButton(
//                             child: Icon(Icons.cancel),
//                             onPressed: () => Navigator.of(context).pop(),
//                           ),
//                           ElevatedButton(
//                             child: Icon(Icons.check_circle),
//                             onPressed: () => _onDelete(context),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 },
//                 icon: Icon(Icons.delete)),
//           )
//         ],
//       ),
//       body: Form(
//         key: _formKey,
//         child: Container(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Barang',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 5),

//               TextFormField(
//                 controller: barang,
//               ),
//               SizedBox(height: 20),

//               Text(
//                 'Satuan',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               SizedBox(height: 5),
//               TextFormField(
//                 controller: jenis, ),
//               SizedBox(height: 20),
//               Text(
//                 'Harga Umum',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               SizedBox(height: 5),
//               TextFormField(
//                 controller: hargaumum,
//                 maxLines: null,
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Harga Grosir',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               SizedBox(height: 5),
//               TextFormField(
//                 controller: hargagrosir,
//                 maxLines: null,
//               ),
//               SizedBox(height: 15),

//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//                 child: Text(
//                   "Submit",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 onPressed: () {
//                   //validate
//                   if (_formKey.currentState!.validate()) {
//                     //send data to database with this method
//                     _onUpdate(context);
//                   }
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
