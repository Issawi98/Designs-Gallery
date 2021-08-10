
import 'package:designs_gallery/pages/intro.dart';
import 'package:flutter/material.dart';
import 'pages/loading.dart';
import 'pages/custom.dart';
import 'pages/choose_page.dart';
import 'pages/intro.dart';
import 'pages/favourites.dart';
import 'pages/intro_tshirts.dart';
import 'pages/cartoons_page.dart';
import 'pages/gifts_page.dart';
import 'pages/posters_page.dart';
import 'pages/starting_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Loading(),
      "/custom": (context) => CustomShirts(),
      "/choose": (context) => ChooseShirtPage(),
      "/intro": (context) => Intro(),
      "/favourites": (context) => FavouritesPage(),
      "/introTshirts": (context) => IntroTshirts(),
      "/cartoons": (context) => CartoonsPage(),
      "/gifts": (context) => GiftsPage(),
      "/posters": (context) => PostersPage(),
      "/start": (context) => StartingPage(),
    },
  ));
}

