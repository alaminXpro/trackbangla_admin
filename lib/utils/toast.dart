import 'package:flutter/material.dart';
import 'package:toast/toast.dart' as toast;

void openToast(BuildContext context, String message) {
  toast.Toast.show(message, textStyle: context, duration: toast.Toast.lengthShort, gravity: toast.Toast.bottom);
}

void openToast1(BuildContext context, String message) {
  toast.Toast.show(message, textStyle: context, duration: toast.Toast.lengthLong, gravity: toast.Toast.bottom);
}