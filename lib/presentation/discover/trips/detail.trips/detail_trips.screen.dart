import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/detail_trips.controller.dart';

class DetailTripsScreen extends GetView<DetailTripsController> {
  const DetailTripsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailTripsScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailTripsScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
