import 'package:delta_app/screen2.dart';
import 'package:delta_app/screen3.dart';
import 'package:flutter/material.dart';
import 'package:delta_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: HomeScreen.id,
      //going to next page
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        Screen2.id: (context) => Screen2(),
        Screen3.id: (context) => Screen3(),
      },

      // home: HomeScreen(),
    );
  }
}
