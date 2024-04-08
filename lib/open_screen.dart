import 'package:flutter/material.dart';

class OpenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigating to LoadingScreen after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/loading');
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img1open.png',
              width: 143,
              height: 160,
            ),
            SizedBox(height: 20),
            Text(
              'THE EDGE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
