import 'package:flutter/material.dart';

class Ayarlar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ayarlar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.settings,size: 75),
            Text("Ayarlar"),
          ],
        ),
      ),
    );
  }
}