import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CartoonsPage extends StatefulWidget {
  @override
  _CartoonsPageState createState() => _CartoonsPageState();
}

class _CartoonsPageState extends State<CartoonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text(
              "Cartoons".toUpperCase(),
              style: TextStyle(
              fontFamily: "Folder",
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white
            ),
          ),
        ),
        body: Center(child: FaIcon(FontAwesomeIcons.portrait, size: 72,)),
    );
  }
}