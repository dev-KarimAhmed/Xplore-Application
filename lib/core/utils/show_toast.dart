// ignore_for_file: file_names



import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:xplore/constants.dart';

Future<bool?> showToast(msg) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: kBackgroundSplashColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}