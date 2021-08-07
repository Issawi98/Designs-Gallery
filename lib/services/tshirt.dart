class Tshirt{
  static int id =0;
  String name;
  String image;
  bool isFav = false;
  List tshirts = [];
  List favourites = []; 

  Tshirt(this.name,this.image){
    id+=1;
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

  List data = [
    Tshirt("Get Shit Done","1GitShitDone.jpg"),
    Tshirt("Haters Make Me Famous","2HatersMakeme.jpg"),
    Tshirt("Make Them Suffer","3MakeThem.jpg"),
    Tshirt("Succes is Revenge","4Sucess.jpg"),
    Tshirt("Got Nothing Else To Do","5GotNothing.jpg"),
    Tshirt("Haters Gonna Hate","6HatersGonna.jpg"),
    Tshirt("Why Always Me","7WhyAlways.jpg"),
    Tshirt("Why So Serious","8BatMan.jpg"),
  ];