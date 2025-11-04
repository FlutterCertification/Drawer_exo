import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RealView extends StatelessWidget {
  const RealView({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Madrid Team",
           style: TextStyle(color: Colors.amberAccent[400], fontSize: 20)
          ),
          const SizedBox(height: 18,),
          const Divider(),
          const Row(
            children: [
              Text("Equipe première"),
              Spacer(),
            ],
          ),
          SizedBox(
            width: size.width,
            height: size.height * 0.65,
            child: ListView.separated(
                itemBuilder: ((c, i) => Container(
                  height: size.height * 0.33,
                  child: Image.asset("images/titu${i+1}.png", fit: BoxFit.contain,),
                )),
                separatorBuilder: ((c, i) => const Divider()),
                itemCount: 5),
            ),
          const SizedBox(height: 18,),
          const Divider(),
          const Row(
            children: [
              Text("Les remplaçants"),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
                itemBuilder: ((c, i) => Container(
                  margin: const EdgeInsets.all(5),
                  height: 140,
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset("images/remp${i + 1}.png", fit: BoxFit.contain,),
                  )
                )),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
            ),
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}