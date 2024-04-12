import 'package:flutter/material.dart';

class SocialLinkButton extends StatelessWidget {
  final IconData icon;

  const SocialLinkButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {
          // Handle social link button press
        },
      ),
    );
  }
}