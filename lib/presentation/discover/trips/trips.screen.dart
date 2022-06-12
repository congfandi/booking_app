import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/trips.controller.dart';

class TripsScreen extends GetView<TripsController> {
  const TripsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TripsScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TripsScreen is working',
          style:  TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
