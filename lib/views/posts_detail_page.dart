import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../getX_api_call/controller/postController.dart';

class PostDetail extends StatelessWidget {
  final PostsController postsController = Get.put(PostsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: postsController.postList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 120,
                child: Text(postsController.postList[index].body),
              ),
            );
          }),
    );
  }
}
