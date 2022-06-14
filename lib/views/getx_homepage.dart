import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../getX_api_call/controller/postController.dart';

class MyHomePage extends StatelessWidget {
  final PostsController postsController = Get.put(PostsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => ListView.builder(
          itemCount: postsController.postList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(postsController.postList[index].title),
              leading: Text(postsController.postList[index].id.toString()),
            );
          })),
    );
  }
}
