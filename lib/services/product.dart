class Product{
  static int id =0;
  String name;
  String image;
  bool isFav = false;
  List products = [];
  // List favourites = []; 

  Product(this.name,this.image){
    id+=1;
    products.add(this);
  }

}
