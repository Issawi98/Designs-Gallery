import 'package:flutter/material.dart';

class StartingPage extends StatefulWidget {
  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text(
              "Hello Issawi!",
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "BECAUSE\nDETAILS\nMATTER".toUpperCase(),
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

              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/introTshirts');
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.all(16),
              //     child: Text('t-shirts'.toUpperCase()),
              //   ),
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.black, // background
              //     onPrimary: Colors.white, // foreground
              //     elevation: 4,
              //     textStyle: TextStyle(fontWeight: FontWeight.bold,),
              //     enableFeedback: true,
              //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              //     //side: BorderSide(width: 5.0, color: Color(0xff9a2d6a),),
              //     shadowColor: Color(0xff9a2d6a),
              //   ),
              // ),
              // SizedBox(
              //   height: 40
              // ),
        
            ],
          ),
        ),
      );
  }
}