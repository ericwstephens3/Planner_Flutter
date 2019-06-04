import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'DrawerOnly.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calendar"),
      ),
        drawer: drawerOnly(),
        body: new Container(
          padding: EdgeInsets.only(top: 10.0),
          child: new CalendarCarousel(

        ),
        ),
    );
  }
}