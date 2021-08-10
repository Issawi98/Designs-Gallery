import 'package:designs_gallery/services/tshirt.dart';
import 'package:designs_gallery/services/tshirt_card.dart';
import 'package:flutter/material.dart';

class ChooseShirtPage extends StatefulWidget {
  @override
  _ChooseShirtPageState createState() => _ChooseShirtPageState();
}

class _ChooseShirtPageState extends State<ChooseShirtPage> {

  // List data = [
  //   Tshirt("Get Shit Done","1GitShitDone.jpg"),
  //   Tshirt("Haters Make Me Famous","2HatersMakeme.jpg"),
  //   Tshirt("Make Them Suffer","3MakeThem.jpg"),
  //   Tshirt("Succes is Revenge","4Sucess.jpg"),
  //   Tshirt("Got Nothing Else To Do","5GotNothing.jpg"),
  //   Tshirt("Haters Gonna Hate","6HatersGonna.jpg"),
  //   Tshirt("Why Always Me","7WhyAlways.jpg"),
  //   Tshirt("Why So Serious","8BatMan.jpg"),
  // ];

  // call favourit list in car instead
  // when click bach all favourites are deleted
  List <Tshirt> fav = [];

  @override
  Widget build(BuildContext context) {
    print("---");
    print(fav);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text(
            "Designs Gallery".toUpperCase(),
            style: TextStyle(
            fontFamily: "Folder",
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.white
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: ()async {
              //dynamic result = await Navigator.pushNamed(context, "/favourites", arguments: {"fav" : fav});
              Navigator.pushReplacementNamed(context, "/favourites", arguments: {"fav" : fav});
                // setState(() {
                //   fav = result["fav"];
                //   // print("---");
                //   // print(fav);
                // });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
            crossAxisCount: 2,
            // childAspectRatio: MediaQuery.of(context).size.width / 
            //   (MediaQuery.of(context).size.height / 1.1),
            childAspectRatio: 0.66,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            shrinkWrap: true,
            children: data.map((e){
              return TshirtsCards(
                ts: e,
                funAdd: () {
                  if (fav.contains(e)){
                    fav.remove(e);
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Removed From Favourites')));
                  }
                  else{
                    fav.add(e);
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Added To Favourites')));
                  }
                  //print(fav);
                },
              );
            }).toList()
          ),
      ),
      );
  }
}