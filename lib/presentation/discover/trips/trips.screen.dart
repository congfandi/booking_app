import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/trips.controller.dart';

class TripsScreen extends GetView<TripsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TripsScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TripsScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
