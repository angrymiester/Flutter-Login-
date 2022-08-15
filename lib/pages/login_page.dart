import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String name = "";
  bool changedButton = false;
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/loginimage.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.00, horizontal: 32.00),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changedButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, Myroutes.homeroute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: changedButton ? 50 : 150,
                  alignment: Alignment.center,
                  child: changedButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      // shape: changedButton?BoxShape.circle:BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.circular(changedButton ? 50 : 8)),
                ),
              )
              // ElevatedButton(
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(150, 30)),
              //   onPressed: () {
              //     Navigator.pushNamed(context, Myroutes.homeroute);
              //   },
              // )
            ],
          ),
        ));
  }
}
