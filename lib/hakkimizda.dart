import 'package:flutter/material.dart';

class Hakkimizda extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hakkımızda"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.assignment_late,size: 75),
            Text("Hakkımızda"),
          ],
        ),
      ),
    );
  }
}