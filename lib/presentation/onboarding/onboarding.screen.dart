import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/onboarding.controller.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnboardingScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OnboardingScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
