import 'package:flutter/material.dart';
import '../services/gift.dart';
import '../services/poster.dart';
import '../services/cartoon.dart';
import '../services/tshirt.dart';
import 'dart:math';

class StartingPage extends StatefulWidget {
  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomTshirt = random.nextInt(tshirts_data.length);
    int randomPoster = random.nextInt(posters_data.length);
    int randomGift = random.nextInt(gifts_data.length);
    int randomCartoon = random.nextInt(cartoons_data.length);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text(
              "Hello!",
              style: TextStyle(
              fontFamily: "Folder",
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Expanded(
                    flex:2,
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
                SizedBox(
                  height: 20
                ),
                Expanded(
                    flex:2,
                    child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                        InkWell(
                            onTap: () {
                              DefaultTabController.of(context).animateTo(1);
                            }, 
                            child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Container(
                                width: 200, 
                                child: Image.asset(
                                tshirts_data[randomTshirt].image, 
                                fit: BoxFit.cover,
                                ),
                              )
                            ), 
                        ),
                        InkWell(
                            onTap: () {
                              DefaultTabController.of(context).animateTo(2);
                            }, 
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Container(child: Image.asset(gifts_data[randomGift].image, fit: BoxFit.cover,), width: 200)
                            )
                        ),
                        InkWell(
                            onTap: () {
                              DefaultTabController.of(context).animateTo(3);
                            }, 
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Container(child: Image.asset(cartoons_data[randomCartoon].image, fit: BoxFit.cover,), width: 200)
                            )
                        ),
                        InkWell(
                            onTap: () {
                              DefaultTabController.of(context).animateTo(4);
                            }, 
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Container(child: Image.asset(posters_data[randomPoster].image, fit: BoxFit.cover,), width: 200,)
                            )
                        ),
                      ],
                    ),
                ),
                SizedBox(
                  height: 30
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Place Holder".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Folder",
                      fontSize: 32 ,
                      ),
                  ),
                  )
              ]
            ),
        )
      );
  }
}

// Padding(
//           padding: const EdgeInsets.fromLTRB(20,20,20,0),
//           child: Column(
//             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               SizedBox(
//                 height: 10
//               ),
//               Expanded(
//                 flex: 3,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     "BECAUSE\nDETAILS\nMATTER".toUpperCase(),
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontFamily: "Folder",
//                       fontSize: 40 ,
//                       ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20
//               ),
//               Expanded(
//                 flex:1,
//                 child: InkWell(
//                   onTap: () {
//                     //controllert
//                     DefaultTabController.of(context).animateTo(1);
//                   }, // Handle your callback
//                   //child: Ink(height: 100, width: 100, color: Colors.blue),
//                   child: Container(
//                     color: Colors.blue[100],
//                     child: Image.asset(tshirts_data[randomTshirt].image, fit: BoxFit.cover,),
//                   )
//                 ),
//               ),
//               Expanded(
//                 flex:1,
//                 child: InkWell(
//                    onTap: () {
//                     DefaultTabController.of(context).animateTo(2);
//                   }, // Handle your callback
//                   //child: Ink(height: 100, width: 100, color: Colors.blue),
//                   child: Container(
//                     color: Colors.blue[300],
//                   )
//                 ),
//               ),
//               Expanded(
//                 flex:1,
//                 child: InkWell(
//                   onTap: () {
//                     DefaultTabController.of(context).animateTo(3);
//                   }, // Handle your callback
//                   //child: Ink(height: 100, width: 100, color: Colors.blue),
//                   child: Container(
//                     color: Colors.blue[400],
//                   )
//                 ),
//               ),
//               Expanded(
//                 flex:1,
//                 child: InkWell(
//                   onTap: () {
//                     DefaultTabController.of(context).animateTo(4);
//                   }, // Handle your callback
//                   //child: Ink(height: 100, width: 100, color: Colors.blue),
//                   child: Container(
//                     color: Colors.blue[500],
//                   )
//                 ),
//               ),
              
//             ],
//           ),
//         ),