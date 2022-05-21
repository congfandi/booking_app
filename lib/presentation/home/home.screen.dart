import 'package:booking_app/infrastructure/widgets/primary.button.dart';
import 'package:booking_app/infrastructure/widgets/app.input.dart';
import 'package:booking_app/infrastructure/widgets/category.dart';
import 'package:booking_app/infrastructure/widgets/secondary.button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const AppInput(
              label: 'Login',
              suffix: Icon(Icons.person),
            ),
            CategoryEvent(onTap: () {}, title: "Caracter"),
            PrimaryButton(buttonText: "Download", onPressed: () {}).type1,
            PrimaryButton(buttonText: "Download", onPressed: () {}).type2,
            PrimaryButton(buttonText: "Download", onPressed: () {}).type3,
            SecondaryButton(buttonText: "Download", onPressed: () {}).type1,
            SecondaryButton(buttonText: "Download", onPressed: () {}).type2,
            SecondaryButton(buttonText: "Download", onPressed: () {}).type3,
          ],
        ),
      ),
    );
  }
}
