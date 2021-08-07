import 'package:flutter/material.dart';
import 'package:designs_gallery/services/tshirt.dart';

class TshirtsCards extends StatefulWidget {

  final Tshirt ts;
  final Function funAdd;

  TshirtsCards({this.ts, this.funAdd});

  @override
  _TshirtsCardsState createState() => _TshirtsCardsState();
}

class _TshirtsCardsState extends State<TshirtsCards> {

  bool ispressed = false;

  void switchContext(Tshirt ts){
    //widget.funAdd();
        setState((){
            //ispressed = !ispressed;
            // if(ts.favourites.contains(ts)){
            //   widget.ts.removeFromavourites(ts);
            //   ispressed =false;
            // }
            // else 
            // {
            //   widget.ts.addToFavourites(ts);
            //   ispressed = true;
            // }
            ts.isFav = !ts.isFav;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0),),
            border: Border.all(color: Colors.black, width: 3),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8,15,8,30),
        child: Column(
          children: [
            //Image.asset("assets/tshirts/${ts.image}"),
            Expanded(
                flex: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0),),
                    boxShadow: [
                      BoxShadow(
                      color: Color(0xff9a2d6a), 
                      spreadRadius: 1,
                      blurRadius: 0,
                      offset: Offset(1, 1),
                      //offset: Offset(_xOffset, _yOffset),
                      ),
                  ],),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/tshirts/${widget.ts.image}', fit: BoxFit.cover,),
                   ),
                ),
            ),
            SizedBox(
              height:5
            ),
            Expanded(
                  flex: 3,
                  child: Text(widget.ts.name.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Folder",
                    fontWeight: FontWeight.bold,
                  ),
                  ),
            ),
            SizedBox(
              height:5
            ),
            Expanded(
              flex: 1,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color: Color(0xff9a2d6a),
                    iconSize: 24,
                    onPressed: (){

                    },
                  ),
                  SizedBox(
                    width:10
                  ),
                  IconButton(
                    onPressed: (){switchContext(widget.ts);},
                    //icon: ispressed? Icon(Icons.favorite) : Icon(Icons.favorite_outline_outlined),
                    //icon: widget.ts.favourites.contains(widget.ts)? Icon(Icons.favorite) : Icon(Icons.favorite_outline_outlined),
                    icon: widget.ts.isFav? Icon(Icons.favorite) : Icon(Icons.favorite_outline_outlined),
                    color: Color(0xff9a2d6a),
                    iconSize: 24,
                    // onPressed: () {
                    //   setState((){
                    //     ispressed = !ispressed;
                    //     print("hello");
                    //   });
                    // },
                  )
                ]
              ),
            )
        ],),
      ),
    );
  }
}




