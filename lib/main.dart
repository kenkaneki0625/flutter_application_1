import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nav Demo',
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
			Text(
				'Start',
				style: TextStyle(fontSize: 48.0),
			),
			ElevatedButton(
				onPressed: () {
				Navigator.push(
					context,
					PageRouteBuilder(
					transitionsBuilder:
						(context, animation, secondaryAnimation, child) {
						return ScaleTransition(
						alignment: Alignment.center,
						scale: Tween<double>(begin: 0.1, end: 1).animate(
							CurvedAnimation(
							parent: animation,
							curve: Curves.fastOutSlowIn,
							),
						),
						child: child,
						);
					},
					transitionDuration: Duration(seconds: 2),
					pageBuilder: (BuildContext context,
						Animation<double> animation,
						Animation<double> secondaryAnimation) {
						return SecondPage();
					},
					),
				);
				},
				child: Text(
				'Final',
				style: TextStyle(
					fontSize: 32.0,
					fontWeight: FontWeight.w700,
				),
				),
			),
			],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            
          ],
        ),
      ),
    );
  }
}
