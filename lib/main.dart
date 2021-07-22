
import 'package:designs_gallery/pages/intro.dart';
import 'package:flutter/material.dart';
import 'pages/loading.dart';
import 'pages/custom.dart';
import 'pages/choose.dart';
import 'pages/intro.dart';
import 'pages/favourites.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Loading(),
      "/custom": (context) => CustomShirts(),
      "/choose": (context) => ChooseShirt(),
      "/intro": (context) => Intro(),
      "/favourites": (context) => Favourites(),
    },
  ));
}

