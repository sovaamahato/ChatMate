import 'package:flutter/material.dart';

import 'screens/auth/login_screen.dart';
// import 'screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

//variable for storing the screen size

late Size mq;

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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


// _initializeFirebase() async{
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
// }
