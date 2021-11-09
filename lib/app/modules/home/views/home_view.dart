// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test/app/modules/detail/views/detail_view.dart';

import 'package:test/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home View'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.textController,
                decoration: InputDecoration(
                    labelText: 'Enter the text', hintText: "Enter the text"),
              ),
              SizedBox(height: 20),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  controller.textController.text.isEmpty
                      ? Get.snackbar(
                          'Failed',
                          'Please Enter some Text',
                          backgroundColor: Colors.red,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM,
                        )
                      : Get.snackbar(
                          'Success',
                          'Your text is saved',
                          backgroundColor: Colors.green,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM,
                        );

                  Get.to(() => DetailView(),
                      arguments: controller.textController.text);
                  controller.textController.clear();
                },
                child: Text('Submit'),
              ),
            ]),
      ),
    );
  }
}
