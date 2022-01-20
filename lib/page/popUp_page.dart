import 'package:flutter/material.dart';
import '../widget/navigation_drawer_widget.dart';

class PopUpPage extends StatefulWidget {
  @override
  _PopUpPageState createState() => _PopUpPageState();
}

class _PopUpPageState extends State<PopUpPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Favourites'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: ElevatedButton(
              child: Text('Open'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Title'),
                    content: Text('Some content'),
                    actions: [
                      TextButton(onPressed: ()=>Navigator.pop(context), child: Text(
                        'Cancel'
                      )),
                      TextButton(onPressed: ()=>Navigator.pop(context), child: Text(
                        'OK'
                      ))
                    ],
                  ),
                );
              })));
}
