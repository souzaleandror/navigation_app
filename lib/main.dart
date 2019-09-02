import 'package:flutter/material.dart';
import 'package:navigation_app/home/HomeWidget.dart';
import 'package:navigation_app/home/widgets/HomeController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      //primeiro e segundo
//      home: HomeWidget(),
      // terceiro metodo
      home: HomeController(child: HomeWidget()),
    );
  }
}
