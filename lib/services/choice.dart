import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Choice{
  final String title;
  final FaIcon icon;
  Choice({this.title, this.icon});
}

List <Choice>choices = [
  Choice(title: "Home", icon: FaIcon(FontAwesomeIcons.home)),
  Choice(title: "Tshirts", icon: FaIcon(FontAwesomeIcons.tshirt)),
  Choice(title: "Gifts", icon: FaIcon(FontAwesomeIcons.gifts)),
  Choice(title: "Cartoons", icon: FaIcon(FontAwesomeIcons.portrait)),
  Choice(title: "Posters", icon: FaIcon(FontAwesomeIcons.palette)),
];