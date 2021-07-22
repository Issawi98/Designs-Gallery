import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  Map fav = {};
  List favourites = [];

  void backButton(){
    Navigator.pop(context, {
      "fav": favourites
    });
  }

  @override
  Widget build(BuildContext context) {
    fav = fav.isEmpty? ModalRoute.of(context).settings.arguments: fav;
    List favourites = fav["fav"];
    print(favourites);
    return WillPopScope(
          onWillPop: () {
            print('Backbutton pressed (device or appbar button), do whatever you want.');

            //trigger leaving and use own data
            Navigator.pop(context, {
              "fav": favourites
            });

            //we need to return a future
            return Future.value(false);
          },
          child: Scaffold(
                      appBar: AppBar(
                        centerTitle: true,
                        elevation: 0.0,
                        backgroundColor: Colors.black,
                        title: Text(
                            "Favourites".toUpperCase(),
                            style: TextStyle(
                            fontFamily: "Folder",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: Colors.white
                          ),
                        ),
                      ),
                      body: ListView(
                        children: [
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: favourites.map((e){
                            return Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Image.asset('assets/tshirts/${e.image}', scale: 0.3,),
                                    Row(
                                    children: [
                                      Text(
                                        e.name.toUpperCase(),
                                        style: TextStyle(
                                        fontFamily: "Folder",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.black
                                      ),),
                                      IconButton(onPressed: (){
                                        setState(() {
                                          favourites.remove(e);
                                        });
                                      }, 
                                      icon: Icon(Icons.delete, size: 32, color: Color(0xff9a2d6a),)
                                      )
                                    ],
                                      ),

                                  ],                    
                                ),
                              ),  
                            );
                          }).toList()
                        )] 
                      ),
                    ),
    );
  }
}