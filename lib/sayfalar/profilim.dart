import 'package:flutter/material.dart';

class Profilim extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.person,size: 75),
          Text("Profilim"),
        ],
      ),
    );
  }

}