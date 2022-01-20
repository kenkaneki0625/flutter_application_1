import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widget/navigation_drawer_widget.dart';

class ToastPage extends StatefulWidget {
  @override
  _ToastPageState createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Favourites'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ExpansionTile(
            title: Text('languages',
            style: TextStyle(fontSize: 24),
            ),
            children: [
              ListTile(title: Text('Python'),
              onTap: (){},
              ),
              ListTile(title: Text('Javascript'),
              onTap: (){},
              ),
              ListTile(title: Text('Java'),
              onTap: (){},
              ),
              
            ],
            ),
          ElevatedButton(
            onPressed: showToast,
            child: Text("show toast"),
          ),
          ElevatedButton(
            onPressed: cancelToast,
            child: Text("cancel toast"),
          )
        ],)
        );
}

void showToast() => Fluttertoast.showToast(
  msg: "Succes",
  fontSize: 18,
  gravity: ToastGravity.BOTTOM,
  backgroundColor: Colors.red,
  textColor: Colors.white
  );
void cancelToast() => Fluttertoast.cancel();
