import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Column(
        children: [
          Image.asset("assests/images/loginimage.png",fit: BoxFit.cover,),
          SizedBox(
          height: 20.0,
          ),
          Text("WELCOME",
          style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            color: Colors.blueAccent
          ),),
           SizedBox(
          height: 20.0,
          ),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             children: [
                TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: " Username ",
              ),
            ),
               TextFormField(
                 obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: " Password ",
              ),
              ),
              
           SizedBox(
          height: 20.0,
          ),

          ElevatedButton(
            child: Text("Log In"),
            style: TextButton.styleFrom(),
            
            onPressed: () {},)
            
             ],
           ),
         )
        ],
      )
    );
  }
}