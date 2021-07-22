import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(10),
                //     topRight: Radius.circular(10),
                //     bottomLeft: Radius.circular(10),
                //     bottomRight: Radius.circular(10)
                // ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff9a2d6a), 
                    spreadRadius: 3,
                    blurRadius: 0,
                    offset: Offset(3, 4),
                    //offset: Offset(_xOffset, _yOffset),
                    ),
                ],
                border: Border.all(color: Colors.black, width: 3)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Create\nYour Own\nT-Shirt".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Folder",
                    fontSize: 40 ,
                    
                    ),
                ),
              ),
            ),

            SizedBox(
              height: 60
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/custom');
                
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Customize Design'.toUpperCase()),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.white, // foreground
                elevation: 4,
                textStyle: TextStyle(fontWeight: FontWeight.bold,),
                enableFeedback: true,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                //side: BorderSide(width: 5.0, color: Color(0xff9a2d6a),),
                shadowColor: Color(0xff9a2d6a),
                
              ),
            ),
            SizedBox(
              height: 40
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/choose');
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Choose Design'.toUpperCase()),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.white, // foreground
                elevation: 4,
                textStyle: TextStyle(fontWeight: FontWeight.bold,),
                enableFeedback: true,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                //side: BorderSide(width: 5.0, color: Color(0xff9a2d6a),),
                shadowColor: Color(0xff9a2d6a),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}