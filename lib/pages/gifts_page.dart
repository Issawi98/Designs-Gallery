import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GiftsPage extends StatefulWidget {
  @override
  _GiftsPageState createState() => _GiftsPageState();
}

class _GiftsPageState extends State<GiftsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text(
              "Unique Gifts".toUpperCase(),
              style: TextStyle(
              fontFamily: "Folder",
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white
            ),
          ),
        ),
        body: Center(child: FaIcon(FontAwesomeIcons.gifts, size: 72,)),
    );
  }
}