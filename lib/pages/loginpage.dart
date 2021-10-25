import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Log In Page",
        style:TextStyle(fontSize: 30,color: Colors.deepOrangeAccent,fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}