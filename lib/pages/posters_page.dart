import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostersPage extends StatefulWidget {
  @override
  _PostersPageState createState() => _PostersPageState();
}

class _PostersPageState extends State<PostersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text(
              "Poster".toUpperCase(),
              style: TextStyle(
              fontFamily: "Folder",
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white
            ),
          ),
        ),
        body: Center(child: FaIcon(FontAwesomeIcons.palette, size: 72,)),
    );
  }
}