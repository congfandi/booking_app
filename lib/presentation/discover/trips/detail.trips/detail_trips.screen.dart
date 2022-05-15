import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/detail_trips.controller.dart';

class DetailTripsScreen extends GetView<DetailTripsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailTripsScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailTripsScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
