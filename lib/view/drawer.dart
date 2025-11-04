import 'package:drawer_exo/models/menu_item.dart';
import 'package:drawer_exo/view/drawer_hider_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  final List<MenuItem> items;
  final Function(int) myselection;

  const DrawerView({super.key, required this.items, required this.myselection});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return (index == 0)
                ? DrawerHeaderView()
                : ListTile(
              title: Text(items[index -  1].name),
              onTap: () {
                myselection(index - 1);
                Navigator.pop(context);
              },
            );
          },
          separatorBuilder: ((context, index) => (index == 0)
              ? const SizedBox()
              : const Divider()),
          itemCount: items.length + 1),
    );
  }
}