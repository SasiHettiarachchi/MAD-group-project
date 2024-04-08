import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'open_screen.dart';
import 'loading_screen.dart';
import 'get_started_screen.dart';
import 'signup_1.dart'; 
import 'signin_1.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Authentication Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFD90101),
        scaffoldBackgroundColor: Color(0xFFD90101), 
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => OpenScreen(),
        '/loading': (context) => LoadingScreen(),
        '/get_started': (context) => GetStartedScreen(),
        '/signup': (context) => SignupScreen(), // Add this route
        '/signin': (context) => LoginScreen(), // Add this route
      },
    );
  }
}
