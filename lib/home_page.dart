import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  final int days = 30;
  final String Name = "Aniket";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in page"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to First App $days by $Name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
