import 'package:flutter/material.dart';
import 'package:navigation_app/home/pages/ContaPage.dart';
import 'package:navigation_app/home/pages/FavoritoPage.dart';
import 'package:navigation_app/home/pages/InicioPage.dart';
import 'package:navigation_app/home/widgets/CustomDrawer.dart';
import 'package:navigation_app/home/widgets/HomeController.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();

  // primeiro metodo
  var pages = <Widget>[
    InicioPage(),
    FavoritoPage(),
    ContaPage(),
  ];

  // Segundo metodo
  int indexPage = 0;

  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    print("Rebuildado");

    return Scaffold(
      key: _keyScaffold,

      // segundo metodo (terceiro nao precisa de parametro)
      drawer: CustomDrawer(
        pageController: _pageController,
        onPressed: (index) {
          _keyScaffold.currentState.openEndDrawer();
          //primeiro metodo
//            setState(() {
//              indexPage = index;
//            });
          //segundo metodo
          _pageController.jumpToPage(index);
        },
      ),
      appBar: AppBar(
        title: Text("Navegacao"),
      ),
      //Primeiro metodo
      //body: pages[indexPage]);
      // Segundo metodo
//      body: PageView(
//        physics: NeverScrollableScrollPhysics(),
//        controller: _pageController,
//        children: pages,
//      ),
      //terceiro metodo
      body: StreamBuilder(
        stream: HomeController.of(context).drawerChangeOutout,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return pages[snapshot.data];
        },
      ),
    );
  }
}
