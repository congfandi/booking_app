import 'package:booking_app/infrastructure/utils/assets.dart';
import 'package:booking_app/presentation/welcome/login/controllers/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginHeader extends GetView<LoginController> {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        Assets.cittaPlants2,
        fit: BoxFit.cover,
      ),
    );
  }
}
