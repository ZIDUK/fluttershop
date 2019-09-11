import 'package:flutter/material.dart';
import '../sidebar/sidebar.dart';
import '../searchbar/searchbar.dart';
import '../shoppingcart/shoppingcart.dart';
import '../carousel/carousel.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
       appBar: AppBar(
         elevation: 0.1,
        backgroundColor: Color.fromRGBO(234, 29, 99, 1),
        title: Text('Flutter Layout home'),    
        actions: <Widget>[
          SearchBar(),
          ShoppingCart(),
        ]    
      ),
      drawer: 
          SideBar(),
      body: ListView(
        children: <Widget>[
          CarouselJT(),
        ],
      ),

    );
  }
}