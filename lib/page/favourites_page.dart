import 'package:flutter/material.dart';
import '../widget/navigation_drawer_widget.dart';

class FavouritesPage extends StatefulWidget {
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  int currentIndex = 0;
  // Replace with pages
  final screens = [
    Center(child: Text('Nav 1', style: TextStyle(fontSize: 60))),
    Center(child: Text('Nav 2', style: TextStyle(fontSize: 60))),
    Center(child: Text('Nav 3', style: TextStyle(fontSize: 60))),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Favourites'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        // body: screens[currentIndex],  // does not preserves the state of previous page
        body: IndexedStack(   // preserves the state of previous page
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Nav 1",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.headphones),
              label: "Nav 2",
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: "Nav 3",
              backgroundColor: Colors.yellow,
            )
          ],
        ),
      );
}
