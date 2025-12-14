import 'exception_logic.dart';

// 基本的な例外処理デモ
void main() {
  final logic = ExceptionLogic();
  print('基本的な例外処理デモを開始します');
  logic.runBasicExceptionDemo();
  print('カスタム例外デモを開始します');
  logic.runCustomExceptionDemo();
  print('デモ終了');
}
