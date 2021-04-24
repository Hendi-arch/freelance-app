class ErrorModel {
  int? status;
  String? message;
  String? errors;

  ErrorModel({this.status, this.message, this.errors});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['errors'] != null) {
      var _errors = json['errors'] as Map<String, dynamic>;
      errors = _errors.values.toList().first.toString().replaceAll(new RegExp(r'[^\w\s]+'), '');
    }
  }
}
