import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/setting.controller.dart';

class SettingScreen extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SettingScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
