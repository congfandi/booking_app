import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/discover.controller.dart';

class DiscoverScreen extends GetView<DiscoverController> {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DiscoverScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DiscoverScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
