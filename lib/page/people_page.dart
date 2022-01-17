import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('People'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Hero(
              tag: "kimetsunoyaiba",
              child :Image.network("https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/05/Tanjiro-and-Zenitsu-featured-from-demon-slayer-Cropped.jpg?q=50&fit=crop&w=767&h=450&dpr=1.5",
            width: 400,)),
      );
}