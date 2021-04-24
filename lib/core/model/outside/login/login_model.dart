class LoginModel {
  int? status;
  String? message;
  String? accessToken;
  UserData? userData;

  LoginModel({this.status, this.message, this.accessToken, this.userData});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    accessToken = json['access_token'];
    userData = json['user_data'] != null ? new UserData.fromJson(json['user_data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['access_token'] = this.accessToken;
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    return data;
  }
}

class UserData {
  int? id;
  String? name;
  String? email;
  String? userid;
  String? phone;
  String? mobilePhone;
  String? birthPlace;
  String? birthDate;
  String? sex;
  String? description;
  String? image;
  String? status;
  String? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  String? imageUrl;
  List<Roles>? roles = [];

  UserData(
      {this.id,
      this.name,
      this.email,
      this.userid,
      this.phone,
      this.mobilePhone,
      this.birthPlace,
      this.birthDate,
      this.sex,
      this.description,
      this.image,
      this.status,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.imageUrl,
      this.roles});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    userid = json['userid'];
    phone = json['phone'];
    mobilePhone = json['mobile_phone'];
    birthPlace = json['birth_place'];
    birthDate = json['birth_date'];
    sex = json['sex'];
    description = json['description'];
    image = json['image'];
    status = json['status'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageUrl = json['image_url'];
    if (json['roles'] != null) {
      json['roles'].forEach((v) {
        roles!.add(new Roles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['userid'] = this.userid;
    data['phone'] = this.phone;
    data['mobile_phone'] = this.mobilePhone;
    data['birth_place'] = this.birthPlace;
    data['birth_date'] = this.birthDate;
    data['sex'] = this.sex;
    data['description'] = this.description;
    data['image'] = this.image;
    data['status'] = this.status;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image_url'] = this.imageUrl;
    if (this.roles != null) {
      data['roles'] = this.roles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Roles {
  int? id;
  String? name;
  String? guardName;
  String? createdAt;
  String? updatedAt;
  int? defaultRole;
  String? images;
  String? description;
  String? status;
  Pivot? pivot;

  Roles(
      {this.id,
      this.name,
      this.guardName,
      this.createdAt,
      this.updatedAt,
      this.defaultRole,
      this.images,
      this.description,
      this.status,
      this.pivot});

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    defaultRole = json['default_role'];
    images = json['images'];
    description = json['description'];
    status = json['status'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['guard_name'] = this.guardName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['default_role'] = this.defaultRole;
    data['images'] = this.images;
    data['description'] = this.description;
    data['status'] = this.status;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? modelId;
  int? roleId;
  String? modelType;

  Pivot({this.modelId, this.roleId, this.modelType});

  Pivot.fromJson(Map<String, dynamic> json) {
    modelId = json['model_id'];
    roleId = json['role_id'];
    modelType = json['model_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['model_id'] = this.modelId;
    data['role_id'] = this.roleId;
    data['model_type'] = this.modelType;
    return data;
  }
}
