import 'package:flutter/material.dart';
import 'package:flutter_app_1/widgets/drawer.dart';

class homepage extends StatelessWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY APP"),
      ),
       body: Center(
          child: Container(
             child:Text("Welcome to flutter",
             style: TextStyle(
               fontSize: 30,
               color : Colors.blueAccent,

             ),
             )
          ),
        ),
        
        drawer: mydrawer(),
      );
  }
}