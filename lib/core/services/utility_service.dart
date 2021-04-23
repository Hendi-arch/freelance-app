import 'dart:io';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class UtilityService {
  Future<DateTime?> pickDate(BuildContext context) async {
    var _result = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        lastDate: DateTime(2030, 12, 31),
        firstDate: DateTime(2000, 01, 01));

    return _result;
  }

  String dateFormatter(String dateParams, {bool isDisplay = true}) {
    String value;
    if (isDisplay) {
      value = DateFormat.yMMMd().format(DateTime.parse(dateParams));
    } else {
      value =
          DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.parse(dateParams));
    }

    return value;
  }

  Future<bool?> checkConnections() async {
    bool? connection;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        connection = true;
      }
    } on SocketException catch (_) {
      print('not connected');
      connection = false;
    }
    return connection;
  }
}
