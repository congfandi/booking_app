import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/welcome.controller.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WelcomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WelcomeScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
