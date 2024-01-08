
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

//sort length
void openToast(context, message){
  Toast.show(message, textStyle: context, webTexColor: Colors.white, backgroundRadius: 20, duration: Toast.lengthShort);
  }

//long length
void openToast1(context, message){
  Toast.show(message, textStyle: context, webTexColor: Colors.white, backgroundRadius: 20, duration: Toast.lengthLong);
  }