
import 'package:designs_gallery/pages/starting_page.dart';
import 'package:flutter/material.dart';
import 'package:designs_gallery/services/choice.dart';
import '../pages/intro_tshirts.dart';
import '../pages/cartoons_page.dart';
import '../pages/gifts_page.dart';
import '../pages/posters_page.dart';
import '../pages/starting_page.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List <Widget>containers = [
    StartingPage(),
    IntroTshirts(),
    GiftsPage(),
    CartoonsPage(),
    PostersPage(),
  ];

  @override
  Widget build(BuildContext context) {

    //Map data = ModalRoute.of(context).settings.arguments;

    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: choices.map((e){
              return Tab(
               text: e.title,
               icon: e.icon,
              );
            }).toList(),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text(
              "DESIGNS GALLERY",
              style: TextStyle(
              fontFamily: "Folder",
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white
            ),
          ),
        ),
        body: TabBarView(
          children: containers,
        )
      )
    );
  }
}