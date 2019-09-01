import 'package:flutter/material.dart';
import 'package:navigation_app/home/widgets/CustomDrawer.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Navegacao"),
      ),
      body: Container(),
    );
  }
}
