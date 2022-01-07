import 'package:designs_gallery/services/product.dart';


class Gift extends Product{

  List gifts = [];
  List favourites = []; 

  Gift({String name,String image}) : super(name, image){
    //id+=1;
    gifts.add(this);
  }

  void addToFavourites(Gift t){
    favourites.add(t);
  }

  void removeFromavourites(Gift t){
    favourites.remove(t);
  }

  List getFavourites(){
    return favourites;
  }

}

  List gifts_data = [
    Gift(name:"Omar Ali",image: "assets/Gifts/tmp/OmarAli2.jpg"),
    Gift(name:"Nourhan",image:"assets/Gifts/tmp/Nourhan2.jpg"),
    Gift(name:"Nada",image:"assets/Gifts/tmp/Nada1.jpg"),
    Gift(name:"Wagih",image:"assets/Gifts/tmp/Wagih1.jpg"),
    Gift(name:"Noha",image:"assets/Gifts/tmp/Noha1.jpg"),
    Gift(name:"Caroleen",image:"assets/Gifts/tmp/Caroleen1.jpg"),
    Gift(name:"Samah",image:"assets/Gifts/tmp/Samah1.jpg"),
    Gift(name:"Omar Ali",image:"assets/Gifts/tmp/OmarAli1.jpg"),
    Gift(name:"Nourhan",image:"assets/Gifts/tmp/Nourhan1.jpg"),
    Gift(name:"Noha",image:"assets/Gifts/tmp/Noha2.jpg"),
    Gift(name:"Alaa",image:"assets/Gifts/tmp/Alaa1.jpg"),
    Gift(name:"ISSAWI",image:"assets/Gifts/tmp/Me1.jpg"),
  ];