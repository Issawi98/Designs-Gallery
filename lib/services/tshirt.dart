import 'package:designs_gallery/services/product.dart';

import 'package:designs_gallery/services/product.dart';

class Tshirt extends Product{
  //static int id =0;
  // String name;
  // String image;
  //bool isFav = false;
  List tshirts = [];
  List favourites = []; 

  Tshirt({String name,String image}) : super(name, image){
    //id+=1;
    tshirts.add(this);
  }

  void addToFavourites(Tshirt t){
    favourites.add(t);
  }

  void removeFromavourites(Tshirt t){
    favourites.remove(t);
  }

  List getFavourites(){
    return favourites;
  }

}

  List tshirts_data = [
    Tshirt(name: "Get Shit Done",image: "1GitShitDone.jpg"),
    Tshirt(name:"Haters Make Me Famous",image:"2HatersMakeme.jpg"),
    Tshirt(name:"Make Them Suffer",image:"3MakeThem.jpg"),
    Tshirt(name:"Succes is Revenge",image:"4Sucess.jpg"),
    Tshirt(name:"Got Nothing Else To Do",image:"5GotNothing.jpg"),
    Tshirt(name:"Haters Gonna Hate",image:"6HatersGonna.jpg"),
    Tshirt(name:"Why Always Me",image:"7WhyAlways.jpg"),
    Tshirt(name:"Why So Serious",image:"8BatMan.jpg"),
  ];