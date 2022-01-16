import 'package:flutter/material.dart';
import '../widget/navigation_drawer_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}
