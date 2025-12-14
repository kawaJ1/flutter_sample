import 'network_exception.dart';

// 例外処理のロジッククラス
class ExceptionLogic {
  // 基本的な例外処理
  void runBasicExceptionDemo() {
    String output = ''; // コンソール表示用の文字列

    // try-catch-finally の例
    try {
      // ゼロ除算エラーを意図的に発生させる
      int result = 10 ~/ 0;
      output += '結果: $result\n';
    } catch (e) {
      // 例外をキャッチして処理
      output += 'try-catch-finally\n';
      output += 'エラー: $e\n\n';
    } finally {
      // 例外の有無に関わらず必ず実行される
      // リソースのクリーンアップなどに使用
      output += 'finally: 処理を終了\n\n';
    }

    // コンソールに表示
    print(output);
  }

  // カスタム例外の使い方
  void runCustomExceptionDemo() {
    String output = ''; // コンソール表示用の文字列

    try {
      // カスタム例外を意図的に発生させる
      _simulateNetworkError();
      output += 'ネットワーク処理が成功しました\n';
    } on NetworkException catch (e) {
      // 特定の例外タイプをキャッチ
      output += 'カスタム例外をキャッチしました\n';
      output += 'エラー: $e\n\n';
    } catch (e) {
      // その他の例外をキャッチ
      output += '予期しないエラー: $e\n\n';
    } finally {
      output += 'finally: カスタム例外デモを終了\n\n';
    }

    // コンソールに表示
    print(output);
  }

  // ネットワークエラーをシミュレートするメソッド
  void _simulateNetworkError() {
    // 条件に応じてカスタム例外を投げる
    bool isNetworkError = true; // 実際にはネットワークチェックを行う
    if (isNetworkError) {
      throw NetworkException('ネットワーク接続に失敗しました');
    }
  }
}
