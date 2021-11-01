import 'package:flutter/material.dart';
import 'package:flutter_app_1/utils/routes.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assests/images/loginimage.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "WELCOME $name",
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.blueAccent),
          ),
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: " Password ",
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(Duration(microseconds: 2));
                    Navigator.pushNamed(context, myRoutes.homeroute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(microseconds: 1),
                    width: changebutton ? 50 : 140,
                    height: 50,
                    alignment: Alignment.center,
                    child: changebutton
                        ? Icon(Icons.done)
                        : Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 10)),
                  ),
                )

                // ElevatedButton(
                //   child: Text("Log In"),
                //   style: TextButton.styleFrom(
                //       minimumSize: Size(150, 40),
                //       backgroundColor: Colors.blueAccent,
                //       textStyle: TextStyle(fontSize: 20)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, myRoutes.homeroute);
                //   },
                // )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
