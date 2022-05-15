import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/discover.controller.dart';

class DiscoverScreen extends GetView<DiscoverController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiscoverScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DiscoverScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
