import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planner',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Planner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _currentIndex = 0;
    double signInOpacity = 1.0;
    double signOutOpacity = 0.0;
    final List<Widget> _children = [];

    void _onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Planner'),
       actions: <Widget>[
       ],
     ),
     body: new Center(),
     drawer: Drawer(
      child: ListView(
        children: <Widget>[
                new UserAccountsDrawerHeader(
                    decoration: new BoxDecoration(color: Colors.blue),
                    accountName: new Text(
                      "Name",
                      style: new TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                    accountEmail: new Text(
                      "email",
                      style: new TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Opacity(opacity: signInOpacity,
                  child:          
                    ListTile(
                      title: Text("Sign In"),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward),
                    ),
                    ),
                Opacity(opacity: signOutOpacity,
                  child:          
                    ListTile(
                      title: Text("Sign Out"),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward),
                    ),
                    ),
              ],
            ),
          ),
     bottomNavigationBar: BottomNavigationBar(
       onTap: _onTabTapped, // new
       currentIndex: _currentIndex, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Messages'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
     ),
   );
 }
  }

