import 'package:flutter/material.dart';
import 'package:delta_app/screen3.dart';

class Screen2 extends StatefulWidget {
  static const String id = 'screen2';
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Color.fromARGB(255, 67, 6, 167),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Screen3.id);
              },
              child: Text('Setting'),
            ),
          ),
        ],
      ),
    );
  }
}
