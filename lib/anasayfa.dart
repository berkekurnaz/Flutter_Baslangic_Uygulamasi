import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_baslangic/sayfalar/ana.dart';
import 'package:flutter_baslangic/sayfalar/listeler.dart';
import 'package:flutter_baslangic/sayfalar/profilim.dart';

class Anasayfa extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AnasayfaState();

}

class _AnasayfaState extends State<Anasayfa>{
  
  int aktifSayfa = 0;

  gecerliSayfa(int sayfa)
  {
    if(sayfa == 0)
    {
      return Ana();
    }
    else if(sayfa == 1)
    {
      return Listeler();
    }
    else if(sayfa == 2)
    {
      return Profilim();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text("Merhaba Flutter"),
      ),

      body: gecerliSayfa(aktifSayfa),

      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: aktifSayfa,
        items : [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Anasayfa",textDirection: TextDirection.ltr,),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.list),
            title: new Text("Listeler",textDirection: TextDirection.ltr,),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text("Profilim",textDirection: TextDirection.ltr,),
          ),
        ],
        onTap: (int i){
          aktifSayfa = i;
          setState(() {
          });
        },
      ),

      drawer: new Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(),
                    Text("Merhaba Flutter"),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Anasayfa'),
              trailing: Icon(Icons.arrow_right),        
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_late),
              title: Text('Hakkımızda'),
              trailing: Icon(Icons.arrow_right),   
              onTap: () {
                Navigator.pushNamed(context, "/hakkimizda");
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Nedir'),
              trailing: Icon(Icons.arrow_right),   
              onTap: () {
                Navigator.pushNamed(context, "/nedir");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ayarlar'),
              trailing: Icon(Icons.arrow_right),   
              onTap: () {
                Navigator.pushNamed(context, "/ayarlar");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.label_outline),
              title: Text('Çıkış Yap'),
              trailing: Icon(Icons.arrow_right),   
              onTap: () {
                exit(0);
              },
            ),
          ],
        ),
      ),

    );
  }

}