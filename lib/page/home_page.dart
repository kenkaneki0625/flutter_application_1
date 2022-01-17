import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/navigation_drawer_widget.dart';
import '../provider/theme_provider.dart';
import '../widget/change_theme_button_widget.dart';
import '../page/people_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Home"),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: GestureDetector(
        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                'Hello $text!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                ),
            Hero(
              tag: "kimetsunoyaiba",
              child :Image.network("https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/05/Tanjiro-and-Zenitsu-featured-from-demon-slayer-Cropped.jpg?q=50&fit=crop&w=767&h=450&dpr=1.5",
            width: 200,))
          ],
        ),
        )
            );
  }
}
