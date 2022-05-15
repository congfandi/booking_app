import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/favorite.controller.dart';

class FavoriteScreen extends GetView<FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FavoriteScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FavoriteScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
