import 'package:flutter/material.dart';
import 'package:flutter_project/Fragments/homePage.dart';
import 'Fragments/productPage.dart';
import './routes/pageRoute.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: homePage(),
      routes:  {
        pageRoutes.home: (context) => homePage(),
        pageRoutes.product: (context) => productPage(),
      },
    );
  }
}