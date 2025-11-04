import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: size.height,
          width: size.width,
          child: Image.asset("images/titu1.png",
          fit: BoxFit.cover,),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(25),
            ),
            margin: const EdgeInsets.only(top: 18),
            padding: const EdgeInsets.symmetric(
              horizontal: 45,
              vertical: 12,
            ),
            child: const Text("Acceuil",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),),
          ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                )
            ),
            padding: const EdgeInsets.all(25),
            child: const Text("Une équipe unique.Avec 15 LDC. Hala Madrid !\n",
            textAlign: TextAlign.center,),
          ),
        ],)
    ],
    ));
  }
}