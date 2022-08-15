import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "login page",
          style: TextStyle(
            fontSize: 20,
            color: Colors.cyan,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
