import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/navigation_drawer_widget.dart';
import '../provider/theme_provider.dart';
import '../widget/change_theme_button_widget.dart';
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
      body: Center(
        child: Text(
          'Hello $text!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
