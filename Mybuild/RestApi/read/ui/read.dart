import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  List _get = [];
  List _getKonsumen = [];

  @override
  void initState() {
    super.initState();
    //in first time, this method will be executed
    _getData();
    Konsumen();
  }

  //Tabel Barang

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(
          //you have to take the ip address of your computer.
          //because using localhost will cause an error
          "http://192.168.0.103/baru/api/barang/list.php"));

      // if response successful
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)['data'];

        // entry data to variabel list _get
        setState(() {
          _get = data;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  //Tabel Konsumen
  Future Konsumen() async {
    try {
      final response = await http.get(Uri.parse(
          //you have to take the ip address of your computer.
          //because using localhost will cause an error
          "http://192.168.0.103/baru/api/konsumen/list.php"));

      // if response successful
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)['data'];

        // entry data to variabel list _get
        setState(() {
          _getKonsumen = data;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 200,
          child: yoan(),
        ),
        SizedBox(
          height: 200,
        ),
        SizedBox(
          height: 200,
          child: konsumenku(),
        ),
      ],
    );
  }

  Widget yoan() {
    return Container(
      child: ListView.builder(itemBuilder: (context, index) {
        return Column(
          children: [
            Text('${_get[index]['barang']}'),
          ],
        );
      }),
    );
  }

  Widget konsumenku() {
    return Container(
      child: ListView.builder(itemBuilder: (context, custumer) {
        return Column(
          children: [Text('${_getKonsumen[custumer]['nama_pelanggan']}')],
        );
      }),
    );
  }
}
