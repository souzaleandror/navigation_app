import 'package:flutter/material.dart';
import 'package:navigation_app/home/widgets/HomeController.dart';

class CustomDrawer extends StatelessWidget {
  final Function(int) onPressed;
  final PageController pageController;

  const CustomDrawer({Key key, this.pageController, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: StreamBuilder<Object>(
          initialData: 0,
          stream: HomeController.of(context).drawerChangeOutout,
          builder: (context, snapshot) {
            return ListView(
              children: <Widget>[
                ListTile(
                  //selected: pageController.page.round() == 0,
                  selected: snapshot.data == 0,
                  title: Text("Inicio"),
                  onTap: () {
                    //onPressed(0);
                    Scaffold.of(context).openEndDrawer();
                    HomeController.of(context).drawerChangeInput.add(0);
                  },
                ),
                ListTile(
                  //selected: pageController.page.round() == 1,
                  selected: snapshot.data == 1,
                  title: Text("Favoritos"),
                  onTap: () {
                    //onPressed(1);
                    Scaffold.of(context).openEndDrawer();
                    HomeController.of(context).drawerChangeInput.add(1);
                  },
                ),
                ListTile(
                  //selected: pageController.page.round() == 2,
                  selected: snapshot.data == 2,
                  title: Text("Conta"),
                  onTap: () {
                    //onPressed(2);
                    Scaffold.of(context).openEndDrawer();
                    HomeController.of(context).drawerChangeInput.add(2);
                  },
                ),
                ListTile(
                  title: Text("Sair"),
                ),
              ],
            );
          }),
    );
  }
}
