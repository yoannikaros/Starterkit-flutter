import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tokolina/model/barangModels.dart';

class FetchUserList {
  var data = [];
  List<DataBarang> results = [];
  String urlList = 'http://192.168.100.37/baru/barang/api/get.php';

  Future<List<DataBarang>> getuserList({String? query}) async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data = json.decode(response.body)['data'];
        results = data.map((e) => DataBarang.fromJson(e)).toList();
        if (query != null) {
          results = results
              .where((element) =>
                  element.barang!.toLowerCase().contains((query.toLowerCase())))
              .toList();
        }
      } else {
        print("fetch error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}
