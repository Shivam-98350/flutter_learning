import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://i.pinimg.com/736x/11/f9/4e/11f94e5d6de40da376d74e8fad6c0cd6.jpg";
    return Drawer(
      child: Container(
        color: Colors.blueAccent,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Shivam Kumar"),
                accountEmail: Text("Shivamkumar@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageurl),),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white
              ),),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white
              ),),
            ),


            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("Contact me",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
