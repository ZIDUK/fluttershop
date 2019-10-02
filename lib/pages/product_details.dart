import 'package:flutter/material.dart';
import '../searchbar/searchbar.dart';
import '../shoppingcart/shoppingcart.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old,
    this.product_detail_picture
    });
  
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         elevation: 0.1,
        backgroundColor: Color.fromRGBO(234, 29, 99, 1),
        title: Text('Flutter Layout Product Detail'),    
        actions: <Widget>[
          SearchBar(),
          ShoppingCart(),
        ]    
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color: Colors.black,
            child: GridTile(              
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("\$${widget.product_detail_old}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough,
                        ),
                        ),
                       
                      ),
                      Expanded(
                        child: Text("\$${widget.product_detail_new_price}",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                        
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // -----------------First Button--------------
          Row(
            children: <Widget>[
              //----- Size Button--------
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Size"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                ),
              ),

               //----- Size Button--------
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Qty"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                ),
              ),

                //----- Size Button--------
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Quantity"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                ),
              ),
            ],
          ),

            //---------Second button
           Row(
            children: <Widget>[
              //----- Size Button--------
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Text("Buy Now")

                ),
              ),

              IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red, onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),


            ],
          ),

        ],
      ),
    );
  }
}