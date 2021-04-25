class PackagesListModel {
  int? status;
  String? message;
  List<Data>? data = [];

  PackagesListModel({this.status, this.message, this.data});

  PackagesListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? packageName;
  String? priceMax;
  String? description;
  String? imageUrl;

  Data(
      {this.id,
        this.packageName,
        this.priceMax,
        this.description,
        this.imageUrl});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    packageName = json['package_name'];
    priceMax = json['price_max'];
    description = json['description'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['package_name'] = this.packageName;
    data['price_max'] = this.priceMax;
    data['description'] = this.description;
    data['image_url'] = this.imageUrl;
    return data;
  }
}
