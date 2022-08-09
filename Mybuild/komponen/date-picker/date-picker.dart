//
// class Jdwal extends StatefulWidget {
//   const Jdwal({Key? key}) : super(key: key);
//
//   @override
//   _JdwalState createState() => _JdwalState();
// }
//
// class _JdwalState extends State<Jdwal> {
//   TextEditingController dateinput = TextEditingController();
//   void initState() {
//     dateinput.text = ""; //set the initial value of text field
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
//
//
// Widget jadwal() {
//   return Container(
//     margin: EdgeInsets.only(top: 8),
//     padding: EdgeInsets.only(top: 16, left: 17, bottom: 11),
//     decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
//     child: Column(
//       children: [
//         TextField(
//           controller: dateinput,
//           decoration: InputDecoration(
//               icon: Icon(Icons.calendar_today), //icon of text field
//               labelText: "Enter Date" //label text of field
//           ),
//           readOnly: true,
//           onTap: () async {
//             DateTime? pickedDate = await showDatePicker(
//                 context: context,
//                 initialDate: DateTime.now(),
//                 firstDate: DateTime(2000),
//                 lastDate: DateTime(2100));
//             if (pickedDate != null) {
//               print(
//                   pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
//               String formattedDate =
//               DateFormat('yyyy/MM/dd').format(pickedDate);
//               print(
//                   formattedDate); //formatted date output using intl package =>  2021-03-16
//               //you can implement different kind of Date Format here according to your requirement
//
//               setState(() {
//                 dateinput.text =
//                     formattedDate; //set output date to TextField value.
//               });
//             } else {
//               print("Date is not selected");
//             }
//           },
//         )
//       ],
//     ),
//   );
// }