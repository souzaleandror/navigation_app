import 'package:flutter/material.dart';
import 'package:navigation_app/home/widgets/HomeController.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "Inicio Page",
            style: Theme.of(context).textTheme.body1,
          ),
          RaisedButton(onPressed: () {
            HomeController.of(context).drawerChangeInput.add(1);
          }),
        ],
      ),
    );
  }
}
