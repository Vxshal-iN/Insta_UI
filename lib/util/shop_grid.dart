import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
   GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Padding(padding: EdgeInsets.all(4.0),
        child: Container(
          color:Colors.lightBlue[100],
        ),);
      },
    );
  }
}