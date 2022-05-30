import 'package:booking_app/infrastructure/theme/colour.styles.dart';
import 'package:booking_app/presentation/welcome/login/login.footer.dart';
import 'package:booking_app/presentation/welcome/login/login.form.dart';
import 'package:booking_app/presentation/welcome/login/login.header.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.ink06,
      appBar: AppBar(
        backgroundColor: ColorStyles.ink06,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: const [LoginHeader(), LoginForm(), LoginFooter()],
      ),
    );
  }
}
