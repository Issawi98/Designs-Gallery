
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../services/gift.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GiftsPage extends StatefulWidget {
  @override
  _GiftsPageState createState() => _GiftsPageState();
}

class _GiftsPageState extends State<GiftsPage> {
  int activeIndex =0;
  final controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text(
              "Unique Gifts".toUpperCase(),
              style: TextStyle(
              fontFamily: "Folder",
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white
            ),
          ),
        ),
        body: Center(
          child: Column(
                children:[
                  CarouselSlider.builder(
                  carouselController: controller,
                  options: CarouselOptions(height: 350.0,
                    autoPlay: true,
                    //aspectRatio: 16/9,
                    //viewportFraction: 0.8,
                    //initialPage: 0,
                    autoPlayInterval: Duration(seconds: 1),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) => {
                      setState(() => activeIndex = index),
                    },
                  ),
                  itemCount: gifts_data.length,
                  itemBuilder: (context, index, realindex){
                    final url = gifts_data[index].image; 
                    return buildImage(url,index);
                  },
                ),
                SizedBox(
                  height:10,
                ),
                buildIndicator(),
                SizedBox(
                  height:12,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Send your Pics & Create your Own!".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Folder",
                          fontSize: 18 ,
                          ),),
                      SizedBox(
                        width:5,
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.fileImport, color: Colors.black, size: 20,),
                        onPressed: (){
                          
                        },
                      )
                    ],
                  ),
                )
                ]
          )
        ),
    );
  }
  Widget buildImage(String url, int index){
      return Container(
        //width: 300,
        margin: EdgeInsets.all(5.0),
        child: Image.asset(url, 
        fit: BoxFit.cover,
        ),
        color: Color(0xff9a2d6a), 
        //color: Color(0xffffffff), 
      );
  }

   Widget buildIndicator() => AnimatedSmoothIndicator(
     activeIndex: activeIndex,
     count: gifts_data.length,
     effect: WormEffect(
       dotColor: Color(0x3f9a2d6a), 
       dotWidth: 20,
       dotHeight: 20,
       activeDotColor:  Colors.black,
     ),
     onDotClicked: (int index){
       return controller.animateToPage(index);
     },
   );
      
}