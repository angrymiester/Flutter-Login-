import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fbom15-1.fna.fbcdn.net/v/t1.6435-9/193474172_4010796222350081_875738313136126063_n.jpg?stp=dst-jpg_p640x640&_nc_cat=106&ccb=1-7&_nc_sid=e3f864&_nc_ohc=R6E32LTtfXIAX_vESB1&_nc_ht=scontent.fbom15-1.fna&oh=00_AT-5a5nhBBYcf44Cv7jNDFQudZtxcOhJLZshKcdnoQ0I_A&oe=6320F48B";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.deepPurple),
                    accountName: Text("Aniket Haldankar"),
                    accountEmail: Text("aniket haldankar73@gmail.com"),
                    currentAccountPicture:
                        CircleAvatar(backgroundImage: NetworkImage(imageUrl)))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.white,
                ),
                title: Text(
                  "Email Me",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
