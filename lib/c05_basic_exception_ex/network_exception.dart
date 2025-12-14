// カスタム例外クラス
// Exceptionインターフェースを実装することで、独自の例外クラスを作成できる
class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}
