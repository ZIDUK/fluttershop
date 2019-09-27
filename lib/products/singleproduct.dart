import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  
  SingleProduct({
    this.product_name, 
    this.prod_picture, 
    this.prod_old_price,
    this.prod_price
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: product_name, 
          child: Material(
            child: InkWell(
              onTap: (){

              },
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(
                      product_name, 
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price", 
                        style: TextStyle(
                          color:Colors.red,
                          fontWeight: FontWeight.w800,
                          )),
                          subtitle: Text(
                        "\$$prod_old_price", 
                        style: TextStyle(
                          color:Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough
                          )),
                  ),
                ),
                child: Image.asset(prod_picture,
                fit: BoxFit.cover) ,
              ),
            ),
          ),
          
          ),
      ),
    );
  }
}