
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../services/cartoon.dart';

class CartoonsPage extends StatefulWidget {
  @override
  _CartoonsPageState createState() => _CartoonsPageState();
}

class _CartoonsPageState extends State<CartoonsPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text(
              "Cartoons".toUpperCase(),
              style: TextStyle(
              fontFamily: "Folder",
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 3,
            itemCount: cartoons_data.length,
            itemBuilder: (context, index) => ImageCard(
              cartoonlist: cartoons_data[index],
            ),
            //staggeredTileBuilder: (index) => StaggeredTile.count(1,2),
            staggeredTileBuilder: (index) => StaggeredTile.count((index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
        )
    );
  }
  
}
class ImageCard extends StatelessWidget {
  const ImageCard({this.cartoonlist});
  final Cartoon cartoonlist;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(cartoonlist.image, fit: BoxFit.cover),
    );
  }
}

// body: Center(
//           child: ListWheelScrollView(
//             itemExtent: 300,
//             diameterRatio: 2,
//             // offAxisFraction: -0.4,
//             squeeze: 0.8,
//             //clipToSize: true,
//             //useMagnifier: true,
//             children: cartoons_data.map((e) {
//               return Container(
//                 padding: EdgeInsets.all(10),
//                 width: 300,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     // borderRadius: BorderRadius.only(
//                     //     topLeft: Radius.circular(10),
//                     //     topRight: Radius.circular(10),
//                     //     bottomLeft: Radius.circular(10),
//                     //     bottomRight: Radius.circular(10)
//                     // ),
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color(0xff9a2d6a), 
//                         spreadRadius: 2,
//                         blurRadius: 0,
//                         offset: Offset(1, 1),
//                         //offset: Offset(_xOffset, _yOffset),
//                         ),
//                     ],
//                     //border: Border.all(color: Colors.black, width: 3)
//                   ),
//                   child: Image.asset(e.image, fit: BoxFit.cover)
//             );
//           }).toList()
//       ),
//         ),