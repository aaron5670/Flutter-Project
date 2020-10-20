import 'package:flutter/material.dart';
import 'package:flutter_project/fragments/singleProductPage.dart';
import 'package:flutter_project/models/posts_model.dart';
import 'package:flutter_project/services/http_service.dart';
import '../navigationDrawer/navigationDrawer.dart';

class productPage extends StatelessWidget {
  static const String routeName = '/productPage';
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Product"),
        ),
        drawer: navigationDrawer(),
        body: FutureBuilder(
          future: httpService.getPosts(),
          builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              List<Post> posts = snapshot.data;
              return ListView(
                children: posts
                    .map(
                      (Post post) => ListTile(
                    title: Text(post.title),
                    subtitle: Text("${post.userId}"),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PostDetail(
                          post: post,
                        ),
                      ),
                    ),
                  ),
                )
                    .toList(),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
    );
  }
}
