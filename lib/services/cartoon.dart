import 'package:designs_gallery/services/product.dart';


class Cartoon extends Product{

  List gifts = [];
  List favourites = []; 

  Cartoon({String name,String image}) : super(name, image){
    //id+=1;
    gifts.add(this);
  }

  void addToFavourites(Cartoon t){
    favourites.add(t);
  }

  void removeFromavourites(Cartoon t){
    favourites.remove(t);
  }

  List getFavourites(){
    return favourites;
  }

}

  List cartoons_data = [
    Cartoon(name:"Toni",image:"assets/Cartoon/toni.jpg"),
    Cartoon(name:"Ahmed Helmy",image:"assets/Cartoon/helmi2.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker9.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker10.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker8.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker13.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker2.jpg"),
    Cartoon(name:"Walter",image:"assets/Cartoon/walter.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker3.jpg"),
    Cartoon(name:"Adel Emam",image:"assets/Cartoon/Adelemam.jpg"),
    Cartoon(name:"Amr Diab",image:"assets/Cartoon/Amrdiab.jpg"),
    Cartoon(name:"Amr Diab",image:"assets/Cartoon/Amrdiab2.jpg"),
    Cartoon(name:"Amr Diab",image:"assets/Cartoon/amrrdiaab.jpg"),
    Cartoon(name:"Bassem Youssef",image:"assets/Cartoon/BassemYoussif.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker7.jpg"),
    Cartoon(name:"Hassan Hosny",image:"assets/Cartoon/HassanHosny.jpg"),
    Cartoon(name:"Ahmed Helmy",image:"assets/Cartoon/helm3.jpg"),
    Cartoon(name:"Ahmed Helmy",image:"assets/Cartoon/Helmi.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker6.jpg"),
    Cartoon(name:"Henady",image:"assets/Cartoon/henady.jpg"),
    Cartoon(name:"MCV",image:"assets/Cartoon/mcv1.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker5.jpg"),
    Cartoon(name:"Judge",image:"assets/Cartoon/judge.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker4.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker12.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker11.jpg"),
    Cartoon(name:"Joker",image:"assets/Cartoon/joker1.jpg"),
    Cartoon(name:"Leo",image:"assets/Cartoon/Leo.jpg"),
  ];