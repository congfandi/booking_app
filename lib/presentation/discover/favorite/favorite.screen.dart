import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/favorite.controller.dart';

class FavoriteScreen extends GetView<FavoriteController> {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavoriteScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FavoriteScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
