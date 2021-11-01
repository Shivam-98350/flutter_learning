import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home_page.dart';
import 'package:flutter_app_1/pages/loginpage.dart';
import 'package:flutter_app_1/utils/routes.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     // home:homepage(),
      theme: ThemeData(primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
     initialRoute: myRoutes.homeroute,
      routes: {
         "/" : (context)=> loginpage(),
        myRoutes.homeroute :(context)=> homepage(),
         myRoutes.loginroute : (context)=> loginpage(),
      },
      
    );
  }
}