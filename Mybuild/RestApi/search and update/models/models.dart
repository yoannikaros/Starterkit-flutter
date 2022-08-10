class barang {
  List<DataBarang>? data;

  barang({this.data});

  barang.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataBarang>[];
      json['data'].forEach((v) {
        data!.add(new DataBarang.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataBarang {
  String? kodeItem;
  String? barang;
  String? jenis;
  String? hargaumum;
  String? hargagrosir;

  DataBarang(
      {this.kodeItem,
      this.barang,
      this.jenis,
      this.hargaumum,
      this.hargagrosir});

  DataBarang.fromJson(Map<String, dynamic> json) {
    kodeItem = json['kode_item'];
    barang = json['barang'];
    jenis = json['jenis'];
    hargaumum = json['hargaumum'];
    hargagrosir = json['hargagrosir'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_item'] = this.kodeItem;
    data['barang'] = this.barang;
    data['jenis'] = this.jenis;
    data['hargaumum'] = this.hargaumum;
    data['hargagrosir'] = this.hargagrosir;
    return data;
  }
}
