import 'package:flutter/material.dart';
import '../sidebar/sidebar.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(234, 29, 99, 1),
        title: Text('Flutter Layout home'),        
      ),
      drawer: 
          SideBar(),

    );
  }
}