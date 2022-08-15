import "package:flutter/material.dart";
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  final int days = 30;
  final String Name = "Aniket";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Catalog App",
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to First App $days by $Name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
