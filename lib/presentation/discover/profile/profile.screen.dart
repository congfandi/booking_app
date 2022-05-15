import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/profile.controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
