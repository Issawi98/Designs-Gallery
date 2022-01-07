import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../services/poster.dart';

class PostersPage extends StatefulWidget {
  @override
  _PostersPageState createState() => _PostersPageState();
}

class _PostersPageState extends State<PostersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text(
              "Posters".toUpperCase(),
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
            crossAxisCount: 2,
            itemCount: posters_data.length,
            itemBuilder: (context, index) => ImageCard(
              posterlist: posters_data[index],
            ),
            //staggeredTileBuilder: (index) => StaggeredTile.count(1,2),
            staggeredTileBuilder: (index) => StaggeredTile.count((index % 2 == 0) ? 1 : 1, (index % 2 != 0) ? 1 : 2),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
        )
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({this.posterlist});

  final Poster posterlist;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(posterlist.image, fit: BoxFit.cover),
    );
  }
}
