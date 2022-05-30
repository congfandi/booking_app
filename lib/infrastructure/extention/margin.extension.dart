import 'package:flutter/material.dart';

extension MarginExtension on EdgeInsets {
  EdgeInsets get topLeft => EdgeInsets.only(top: top, left: left);

  EdgeInsets get topRight => EdgeInsets.only(top: top, right: right);

  EdgeInsets get bottomLeft => EdgeInsets.only(bottom: bottom, left: left);

  EdgeInsets get bottomRight => EdgeInsets.only(bottom: bottom, right: right);

  EdgeInsets get topCenter => EdgeInsets.only(top: top, left: left, right: right);

  EdgeInsets get bottomCenter => EdgeInsets.only(bottom: bottom, left: left, right: right);

  EdgeInsets get leftCenter => EdgeInsets.only(left: left, top: top, bottom: bottom);

  EdgeInsets get rightCenter => EdgeInsets.only(right: right, top: top, bottom: bottom);

  EdgeInsets get center => EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);

  EdgeInsets get zero => EdgeInsets.zero;

  EdgeInsets get only => EdgeInsets.only(top: top, left: left, right: right, bottom: bottom);
}
