import 'package:flutter/material.dart';

class SignIn2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

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
              'SUCCESSFULLY\nSIGN IN',
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
