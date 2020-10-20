import 'dart:convert';
import 'package:flutter_project/models/posts_model.dart';
import 'package:http/http.dart';


class HttpService {
  final String productsUrl = "https://fakestoreapi.com/products";

  Future<List<Post>> getPosts() async {
    Response res = await get(productsUrl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> products = body
          .map(
            (dynamic item) => Post.fromJson(item),
      )
          .toList();
      return products;
    } else {
      throw 'Gaat iets fout!';
    }
  }
}