import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home_page.dart';
import 'package:flutter_app_1/pages/loginpage.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     // home:homepage(),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
     
      routes: {
         "/" : (context)=> loginpage(),
         "/home" : (context)=> homepage(),
         "/login" : (context)=> loginpage(),
      },
      
    );
  }
}