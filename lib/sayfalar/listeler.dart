import 'package:flutter/material.dart';

class Listeler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.list,size: 75),
          Text("Listeler"),
        ],
      ),
    );
  }

}