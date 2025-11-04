import 'package:drawer_exo/models/menu_item.dart';
import 'package:drawer_exo/view/drawer.dart';
import 'package:drawer_exo/view/home_view.dart';
import 'package:drawer_exo/view/real_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppController extends StatefulWidget {
  final String title;

  const AppController({super.key, required this.title});
  @override
  State<StatefulWidget> createState() {
    return AppControllerState();
  }

}

class AppControllerState extends State<AppController> {
  int index = 0;
  final List<MenuItem> menu = [
    MenuItem(name: "Acceuil", view: HomeView()),
    MenuItem(name: "Team", view: RealView()),
  ];

  void selected (int newIndex) => setState(() => index = newIndex);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: DrawerView(items: menu, myselection: selected,),
      body: menu[index].view,
    );
  }
}