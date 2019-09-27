import 'package:flutter/material.dart';
import 'package:fluttershopjt/products/singleproduct.dart';

class Products extends StatefulWidget { 

  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_List = [
    {
      "name": "Pulsera Santos",
      "picture": "images/PulseraSatos.jpg",
      "old_price": 120,
      "price": 80,

    },
    {
      "name": "Rosario Onyx",
      "picture": "images/RosarioOnyx.jpg",
      "old_price": 120,
      "price": 80,

    },
    {
      "name": "Cadena San Benito",
      "picture": "images/cadenaSB.jpg",
      "old_price": 100,
      "price": 50,

    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_List.length,
      gridDelegate: 
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2), 
        itemBuilder: (BuildContext context, int index){
            return SingleProduct(
              product_name: product_List[index]['name'],
              prod_picture: product_List[index]['picture'],
              prod_old_price: product_List[index]['old_price'],
              prod_price: product_List[index]['price'],
            );
        
    
  });
  }
}