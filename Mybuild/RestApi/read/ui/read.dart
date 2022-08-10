import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class KonsumenCard extends StatefulWidget {
  const KonsumenCard({Key? key}) : super(key: key);

  @override
  State<KonsumenCard> createState() => _KonsumenCardState();
}

class _KonsumenCardState extends State<KonsumenCard> {
  List _get = [];


  @override
  void initState() {
    super.initState();
    //in first time, this method will be executed
    _getData();
    _get.length != 0;
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(
        //you have to take the ip address of your computer.
        //because using localhost will cause an error
          "http://192.168.0.102/baru/barang/api/list.php"));

      // if response successful
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        // entry data to variabel list _get
        setState(() {
          _get = data;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
          itemCount: _get.length,
          itemBuilder: (context,index){
        return Bounceable(
          onTap: (){},
          child: Card(
            color: Colors.black12,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 20,left: 20),
              child: Text('${_get[index]['barang']}'),
            ),),);

      }
      )
      );
  }
}
