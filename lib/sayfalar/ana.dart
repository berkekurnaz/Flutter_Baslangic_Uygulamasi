import 'package:flutter/material.dart';

class Ana extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.home,size: 75),
          Text("Anasayfa"),
        ],
      ),
    );
  }

}