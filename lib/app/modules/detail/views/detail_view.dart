// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:test/app/modules/detail/controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail View'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.occuranceOfCharacter.length,
        itemBuilder: (cont, index) {
          String key = controller.occuranceOfCharacter.keys.elementAt(index);
          return ListTile(
            leading: Text('$key : '),
            title: Text(controller.occuranceOfCharacter[key].toString()),
          );
        },
      ),
    );
  }
}
