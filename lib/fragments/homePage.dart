import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';
import '../random_words_list.dart';

class homePage extends StatelessWidget {
  static const String routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: navigationDrawer(),
        body: RandomWords()
    );
  }
}
