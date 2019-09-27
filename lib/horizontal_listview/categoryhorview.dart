import 'package:flutter/material.dart';

class CategoryHorView extends StatelessWidget {
  final String image_location;
  final String image_caption;

CategoryHorView({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap:(){

      },
      child: Container(
        width: 100.0,
      child: ListTile(
        title: Image.asset(image_location,
        width:100.0,
        height: 80.0,),
     
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption, style: TextStyle(fontSize: 12.0),),
        ),
      ),
      ),
      ),);
  }
}