

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_projects_14/Services/remote_services.dart';
import 'package:practice_projects_14/getX_api_call/models/post.dart';

class PostsController extends GetxController {

  var postList = <Post>[].obs;

  @override
  void onInit(){
    fetchPosts();
    super.onInit();

  }

  void fetchPosts() async {
    //remote services will be in different class
    try{
      var posts = await RemoteServices.fetchPosts();
      if (posts != null)
        {
          postList.value=posts;
        }
    }
    catch(e)
    {
      return null;
    }

  }




}