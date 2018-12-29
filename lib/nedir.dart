import 'package:flutter/material.dart';

class Nedir extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Nedir ?"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.assignment,size: 75),
            Text("Nedir"),
          ],
        ),
      ),
    );
  }
}