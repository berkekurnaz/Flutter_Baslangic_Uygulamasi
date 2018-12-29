import 'package:flutter/material.dart';
import 'package:flutter_baslangic/anasayfa.dart';
import 'package:flutter_baslangic/hakkimizda.dart';
import 'package:flutter_baslangic/nedir.dart';
import 'package:flutter_baslangic/ayarlar.dart';

void main(){
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Anasayfa(),
        "/hakkimizda": (context) => Hakkimizda(),
        "/nedir": (context) => Nedir(),
        "/ayarlar": (context) => Ayarlar(),
      },
    ),
  );
}
