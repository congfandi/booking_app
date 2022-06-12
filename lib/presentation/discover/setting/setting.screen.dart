import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/setting.controller.dart';

class SettingScreen extends GetView<SettingController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SettingScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
