import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 状態を持たないウィジェット
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Sample',
      home: Scaffold(
        appBar: AppBar(title: const Text('StatelessWidgetの例')),
        body: const Center(
          child: Text(
            'こんにちは！これはStatelessWidgetです。',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
