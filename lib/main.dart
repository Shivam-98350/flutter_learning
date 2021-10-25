import 'package:flutter/material.dart';
import 'package:flutter_app_1/home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:homepage()
     
      
    );
  }
}