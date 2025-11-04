import 'package:flutter/material.dart';

class DrawerHeaderView extends StatelessWidget {
  const DrawerHeaderView({super.key});


  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: InkWell(
          onTap: (() => Navigator.pop(context)),
          child: Card(
            color: Colors.amber.shade100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.sports_soccer, color: Colors.amber[800]),
                Text("Team", style: TextStyle(color: Colors.amber[800]),),
              ],
            ),),
        )
    );
  }
}