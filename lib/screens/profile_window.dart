import 'package:flutter/material.dart';

class ProfileWindow extends StatefulWidget {
  const ProfileWindow({Key? key}) : super(key: key);

  @override
  State<ProfileWindow> createState() => _ProfileWindowState();
}

class _ProfileWindowState extends State<ProfileWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE92E00),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white, size: 30,),
          onPressed: () {
            // Handle menu button tap
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white, size: 30,),
            onPressed: () {
              // Handle settings button tap
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/images/user.png'), // Replace with your avatar image
              ),
              SizedBox(height: 20.0),

              // Username
              Text(
                'USERNAME',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Student ID',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white70
                ),
              ),
              SizedBox(height: 10.0),
              // Role Name
              Text(
                'Faculty',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white70
                ),
              ),
              SizedBox(height: 10.0),

              // Other Details (e.g., email, phone number, etc.)
              Text(
                'Contact Number',
                style: TextStyle(
                  fontSize: 16.0,
                    color: Colors.white70
                ),
              ),
              SizedBox(height: 20.0),

              // Button to update user details
              SizedBox(
                width: 250, // Set the same fixed width for both buttons
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to HomeWindow
                    Navigator.pushNamed(context, '/check');
                  },
                  child: Text('Update Profile'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
