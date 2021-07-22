import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void loadData() async{
    await Future.delayed(Duration(seconds: 2), (){
     Navigator.pushReplacementNamed(context, "/intro");
    }); 
  }

  @override
  void initState() {
    // TODO: implement initState
    loadData();  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,300,10,0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/MyLogoBlack.png",
                height: 79,
                width: 100,
                // scale: 0.05,
                )
            ),
            SizedBox(
              height: 10
            ),
            SpinKitThreeBounce(
              color: Colors.black,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}