import 'package:chatapp/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
          primaryColor: Colors.black,
          textTheme: const TextTheme(
            button: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          )),
    );
  }
}
