import 'package:flutter/material.dart';
import 'package:flutter_app_1/utils/routes.dart';

class loginpage extends StatefulWidget {
  // const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      {
        setState(() {
          changebutton = true;
        });
        await Future.delayed(Duration(microseconds: 2));
        await Navigator.pushNamed(context, myRoutes.homeroute);
        setState(() {
          changebutton = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset(
              "assests/images/hey3.png",
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "User Name cannot be empty";
                      } else {
                        return null;
                      }
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password must be greater than 6 digits";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Material(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(changebutton ? 50 : 10),
                    child: InkWell(
                      onTap: () => movetohome(context),
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
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
