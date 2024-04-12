import 'package:edge_app/widgets/social_link_button.dart';
import 'package:flutter/material.dart';

class LandingWindow extends StatefulWidget {
  @override
  _LandingWindowState createState() => _LandingWindowState();
}

class _LandingWindowState extends State<LandingWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE92E00),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                width: 200, // Adjust the width as needed
                height: 200, // Adjust the height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF84D19B),
                  border: Border.all(
                    color: Colors.black, // Change the border color as needed
                    width: 2.0, // Adjust the border width as needed
                  ),
                ),
                child: Image.asset(
                  'assets/logo/Logo (1).png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Text("EDGE APP", style: TextStyle(fontSize: 45, fontWeight: FontWeight.w800, color: Colors.white),),
            SizedBox(height: 15,),
            SizedBox(
              width: 250, // Set a fixed width for both buttons
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Login'),
              ),
            ),

            SizedBox(height: 10.0),

            SizedBox(
              width: 250, // Set the same fixed width for both buttons
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to HomeWindow
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Visit Home'),
              ),
            ),

            SizedBox(height: 20.0),

            // Social Links
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialLinkButton(icon: Icons.facebook),
                SizedBox(width: 10.0),
                SocialLinkButton(icon: Icons.rocket),
                SizedBox(width: 10.0),
                SocialLinkButton(icon: Icons.android),
              ],
            ),
          ],
        ),
      ),

    );

  }
}