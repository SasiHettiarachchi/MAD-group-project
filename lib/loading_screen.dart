import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/get_started');
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
              ' THE\nEDGE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 470),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  height: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 8, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 40,
                  height: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 8, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 40,
                  height: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 8, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
