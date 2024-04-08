import 'package:flutter/material.dart';

class SignUp2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigating to LoadingScreen after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/signin');
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/imgdone.png',
              width: 143,
              height: 160,
            ),
            SizedBox(height: 20),
            Text(
              'SUCCESSFULLY\nSIGN UP',
              textAlign: TextAlign.center,
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
