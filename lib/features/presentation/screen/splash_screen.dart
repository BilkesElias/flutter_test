
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_f/features/presentation/screen/home_screen.dart';

// ignore: use_key_in_widget_constructors
class SplashScreenWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds, then navigate to HomeScreen
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 46, 46, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
             Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
           
           
          ],
        ),
      ),
    );
  }
}
