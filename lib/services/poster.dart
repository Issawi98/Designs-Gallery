import 'package:designs_gallery/services/product.dart';


class Poster extends Product{

  List gifts = [];
  List favourites = []; 

  Poster({String name,String image}) : super(name, image){
    //id+=1;
    gifts.add(this);
  }

  void addToFavourites(Poster t){
    favourites.add(t);
  }

  void removeFromavourites(Poster t){
    favourites.remove(t);
  }

  List getFavourites(){
    return favourites;
  }

}

  List posters_data = [
    Poster(name:"Did You Miss Me!",image: "assets/Posters/didyouR.jpg"),
    Poster(name:"Omar Ali",image: "assets/Posters/best1.jpg"),
    Poster(name:"Get Shit Done",image: "assets/Posters/getshitR.jpg"),
    Poster(name:"Choose People Who Choose You",image: "assets/Posters/choosePeSQ.jpg"),
    Poster(name:"Believe to Achieve",image: "assets/Posters/BelieveR.jpg"),
    Poster(name:"Opportunity Knows Once",image: "assets/Posters/doorSQ.jpg"),
    Poster(name:"Opportunity Knows Once",image: "assets/Posters/doorR.jpg"),
    Poster(name:"Haters Make Me Famous",image: "assets/Posters/hatersfamousS.jpg"),
    Poster(name:"Game Over",image: "assets/Posters/gameoverR.jpg"),
    Poster(name:"Use Your Heart Wisely",image: "assets/Posters/heartSQ.jpg"),
    Poster(name:"BatMan",image: "assets/Posters/batmanR.jpg"),
    Poster(name:"Oriental Design",image: "assets/Posters/meandSalmaSQ.jpg"),
    Poster(name:"Haters Gonna Hate",image: "assets/Posters/HatersgonnaR.jpg"),
    Poster(name:"Ain Shams Quote",image: "assets/Posters/mshkolnasS.jpg"),
    Poster(name:"Joker",image: "assets/Posters/jokerR.jpg"),
    Poster(name:"Something Good",image: "assets/Posters/SomethingSQ.jpg"),
    Poster(name:"Revenge",image: "assets/Posters/RevengeR.jpg"),
    Poster(name:"One Day",image: "assets/Posters/rememberSQ.jpg"),
    Poster(name:"Class with Vision",image: "assets/Posters/visionR.jpg"),
    Poster(name:"Why Always Me!",image: "assets/Posters/whymeSQ.jpg"),
  ];