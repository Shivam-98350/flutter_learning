import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home_page.dart';
import 'package:flutter_app_1/pages/loginpage.dart';
import 'package:flutter_app_1/utils/routes.dart';
import 'package:flutter_app_1/widgets/theme.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
     // home:homepage(),
     theme: myTheme.lightTheme(context),
     // darkTheme: myTheme.darkTheme(context),
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