import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Widget Tree Sample')),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue[100],
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Hello', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
