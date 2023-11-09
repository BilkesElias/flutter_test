
import 'package:flutter/material.dart';

import 'features/presentation/screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Roboto', // Set your desired font family
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreenWidget(),
    );
  }
}
