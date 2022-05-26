import 'package:flutter/material.dart';
import 'package:myapp/theme/theme_manager.dart';

ThemeManager _themeManager = ThemeManager();

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Self Care App'),
        centerTitle: true,
        actions: [
          Switch(
              value: _themeManager.themeMode == ThemeMode.dark,
              onChanged: (newValue) {
                _themeManager.toggleTheme(newValue);
              })
        ],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(Icons.home),
              label: Text('Home Page'),
            ),
          ),
          Image.asset('Assets/Self_caretheme.jpg', fit: BoxFit.fill),
        ],
      ),
    );
  }
}
