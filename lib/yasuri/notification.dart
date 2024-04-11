import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD80000),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.notifications,
                size: 60, 
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                'Notification',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.0,
                ),
              ),
              Text(
                'NotificationMessage',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.0,
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  
                  Navigator.pop(context); 
                },
                child: Text('Show',),
                 
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  
                  Navigator.pop(context); 
                },
                child: Text('Dismiss',),
                 
              ),
            ],
          ),
        ),
      ),
    );
  }
}