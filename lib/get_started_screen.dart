import 'package:flutter/material.dart';
import 'signup_1.dart'; 

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD90101), // Red color
      body: Stack(
        children: [
          // Layer 1: Cover image1.jpg on the top half
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height / 1.9,
            child: Image.asset(
              'assets/image1.png',
              fit: BoxFit.cover,
            ),
          ),
          // Layer 2: Cover image2.jpg on the bottom half
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 2.4,
            child: Image.asset(
              'assets/image2.png',
              fit: BoxFit.cover,
            ),
          ),
          // Layer 3: Get Started Button
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Container(
              width: 284,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Navigate to SignupScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  // Adjust button width
                  minimumSize: Size(284, 0),
                ),
                label: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 24),
                ),
                icon: Icon(Icons.fast_forward),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
