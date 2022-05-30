import 'package:flutter/material.dart';

extension ResizeExtension on Widget {
  Widget resize(double width, double height) {
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }
}