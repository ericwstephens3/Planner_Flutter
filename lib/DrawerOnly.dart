import 'package:flutter/material.dart';

class drawerOnly extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var signInOpacity = 1.0;
    var signOutOpacity = 0.0;

    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: new BoxDecoration(color: Colors.blue),
            accountName: new Text(
              "Name",
              style:
              new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            accountEmail: new Text(
              "email",
              style:
              new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            title: Text("Calendar"),
            onTap: () {
              Navigator.popAndPushNamed(context, "calendar");
            },
            trailing: Image.asset("assets/calendar16.png"),
          ),
          Opacity(
            opacity: signInOpacity,
            child: ListTile(
              title: Text("Sign In"),
              onTap: () {},
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Opacity(
            opacity: signOutOpacity,
            child: ListTile(
              title: Text("Sign Out"),
              onTap: () {},
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }

}