import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

// 状態を持つウィジェット
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0; // 状態（State）

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Sample',
      home: Scaffold(
        appBar: AppBar(title: const Text('StatefulWidgetの例')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('ボタンを押した回数：'),
              Text(
                '$_count',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: _increment, child: const Text('＋ボタン')),
            ],
          ),
        ),
      ),
    );
  }
}
