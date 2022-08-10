import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final _formKey = GlobalKey<FormState>();

  //inisialize field
  var barang = TextEditingController();
  var barcode = TextEditingController();
  var idsatuan = TextEditingController();
  var jenis = TextEditingController();
  var hargaumum = TextEditingController();
  var hargagrosir = TextEditingController();
  var id = TextEditingController();
  var qty = TextEditingController();

  Future _onSubmit() async {
    try {
      return await http.post(
        Uri.parse("http://192.168.0.102/baru/barang/api/post.php"),
        body: {
          "barang": barang.text,
          "barcode": barcode.text,
          "idsatuan": idsatuan.text,
          "jenis": jenis.text,
          "hargaumum": hargaumum.text,
          "hargagrosir": hargagrosir.text,
          "id": id.text,
          "qty": qty.text,
        },
      ).then((value) {
        //print message after insert to database
        //you can improve this message with alert dialog
        var data = jsonDecode(value.body);
        print(data["message"]);

        Navigator.of(context)
            .pushNamedAndRemoveUntil('/main', (Route<dynamic> route) => false);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah barang baru"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                'Barang',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                controller: barang,
                decoration: const InputDecoration(hintText: 'Masukan Nama Barang'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ngga boleh kosong mah';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),
              Text(
                'Satuan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Masukan Satuan'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ngga boleh kosong mah';
                  }
                  return null;
                },
                controller: jenis,
              ),


              SizedBox(height: 20),
              Text(
                'Harga Umum',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                controller: hargaumum,
                maxLines: null,
                decoration: const InputDecoration(hintText: 'Masukan Harga Umum'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ngga boleh kosong mah';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),
              Text(
                'Harga Grosir',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                controller: hargagrosir,
                maxLines: null,
                decoration: const InputDecoration(hintText: 'Masukan Harga Grosir'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ngga boleh kosong mah';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),
              Text(
                'Barocde',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                controller: barcode,
                decoration: const InputDecoration(hintText: 'Masukan Barocde'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ngga boleh kosong mah';
                  }
                  return null;
                },
              ),


              SizedBox(height: 20),
              Text(
                'Isatuan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                controller: idsatuan,
                decoration: const InputDecoration(hintText: 'Masukan idsataun'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ngga boleh kosong mah';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),
              Text(
                'id',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                controller: id,
                decoration: const InputDecoration(hintText: 'Masukan id'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ngga boleh kosong mah';
                  }
                  return null;
                },
              ),



              SizedBox(height: 20),
              Text(
                'qty',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                controller: qty,
                decoration: const InputDecoration(hintText: 'Masukan qty'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ngga boleh kosong mah';
                  }
                  return null;
                },
              ),

              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  //validate
                  if (_formKey.currentState!.validate()) {
                    //send data to database with this method
                    _onSubmit();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
