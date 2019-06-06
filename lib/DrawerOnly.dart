import 'package:flutter/material.dart';
import 'state_widget.dart';

class drawerOnly extends StatefulWidget{

  @override
  drawerOnlyState createState() => drawerOnlyState();

}

class drawerOnlyState extends State<drawerOnly>{
    var signInOpacity = 1.0;
    var signOutOpacity = 0.0;
    String accountName = "name";
    String accountEmail = "email";

  void signInChange(){
    setState((){
      signInOpacity = 0.0;
      signOutOpacity = 1.0;
      accountName = StateWidget.of(context).getAccountName();
      accountEmail = StateWidget.of(context).getAccountEmail();
    });
  }

 void signOutChange(){
    setState((){
      signInOpacity = 1.0;
      signOutOpacity = 0.0;
      accountName = "name";
      accountEmail = "email";
    });
  }

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
              accountName,
              style:
              new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            accountEmail: new Text(
              accountEmail,
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
              onTap: () {StateWidget.of(context).signInWithGoogle();
              signInChange();},
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Opacity(
            opacity: signOutOpacity,
            child: ListTile(
              title: Text("Sign Out"),
              onTap: () {StateWidget.of(context).signOut();
              signOutChange();},
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }

}