import 'package:flutter/material.dart';

import 'screens/auth/login_screen.dart';
import 'screens/home_screen.dart';

//variable for storing the screen size

late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Mate',
      theme: ThemeData(
       appBarTheme: AppBarTheme(centerTitle: true,
       color: Colors.white,
       
  iconTheme: IconThemeData(color: Colors.black),
       titleTextStyle: TextStyle(
        color: Colors.black,
       ),
       elevation: 1,
       
       ),
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(
        
      ),
    );
  }
}
