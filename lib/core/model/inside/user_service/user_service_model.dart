class UserServiceModel {
  int? status;
  String? message;
  List<Data>? data = [];

  UserServiceModel({this.status, this.message, this.data});

  UserServiceModel.fromJson(Map<String, dynamic> json) {
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
  String? serviceName;
  String? businessName;
  String? description;
  String? status;
  String? imageUrl;

  Data({this.id, this.serviceName, this.businessName, this.description, this.status, this.imageUrl});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceName = json['service_name'];
    businessName = json['business_name'];
    description = json['description'];
    status = json['status'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_name'] = this.serviceName;
    data['business_name'] = this.businessName;
    data['description'] = this.description;
    data['status'] = this.status;
    data['image_url'] = this.imageUrl;
    return data;
  }
}
