import 'package:flutter/material.dart';
import 'exception_logic.dart';

// Flutterの例外処理デモ
void main() {
  // FlutterError.onError: UI関連のエラーをキャッチ
  FlutterError.onError = (FlutterErrorDetails details) {
    // デバッグコンソールに出力
    FlutterError.dumpErrorToConsole(details);
    // ログ送信やエラーレポート出力処理など
    print('FlutterError.onError でキャッチ: ${details.exception}');
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exception Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ExceptionDemoScreen(),
    );
  }
}

class ExceptionDemoScreen extends StatefulWidget {
  const ExceptionDemoScreen({super.key});

  @override
  State<ExceptionDemoScreen> createState() => _ExceptionDemoScreenState();
}

class _ExceptionDemoScreenState extends State<ExceptionDemoScreen> {
  final ExceptionLogic _logic = ExceptionLogic();
  String _status = '準備完了';

  void _simulateError() {
    setState(() {
      _status = '実行結果は、コンソールログを確認してください。';
    });

    // try-catch がないため未処理エラーになる
    _logic.simulateError();
    // エラーが発生したらグローバルハンドラで処理されるため、ここには到達しない
    print("エラー処理完了");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              'ボタンを押すとエラーが発生します。\n'
              'FlutterError.onError で処理されます。',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _simulateError,
              child: const Text('エラーをシミュレート'),
            ),
            const SizedBox(height: 10),
            Text(
              _status,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
