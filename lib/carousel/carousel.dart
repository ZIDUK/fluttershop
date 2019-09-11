import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselJT extends StatefulWidget {
  @override
  _CarouselJTState createState() => _CarouselJTState();
}

class _CarouselJTState extends State<CarouselJT> {

  bool play = true; 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('./images/fashioncar1.jpeg'),
          AssetImage('./images/fashioncar1.jpeg'),
          AssetImage('./images/fashioncar1.jpeg'),
          AssetImage('./images/fashioncar1.jpeg'),
        ],
        
        autoplay: this.play,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
  }
}
