import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:practice_projects_14/getX_api_call/models/post.dart';

class RemoteServices {
  static var client = http.Client();
  
  static Future<List<Post>?> fetchPosts() async {
    var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200)
      {
        var jsonString = response.body;
        print(response.body);
        print(response.statusCode);
        return postFromJson(jsonString);
      }
    else
      {
        return null;
      }
    
  }







}
