# Flutter Sample Codes

このリポジトリは、Flutterの基礎を学ぶためのサンプルコード集です。  
[Qiitaの記事](https://qiita.com/kawaJ1/items/d1e3be32798d1fcf9456)の章ごとにディレクトリを分けており、Flutter の挙動を確認できます。

## プロジェクト構成
libディレクトリ以外は、flutterコマンドでプロジェクトを生成したときのままです
```
lib/
├── c01_part_ex               ← part構文
├── c02_widget_tree_ex        ← Widgetツリー
├── c03_stateless_widget_ex   ← Stateful / Stateless の違い
├── c04_stateful_widget _ex   ← Stateful / Stateless の違い
├── c05_basic_exception_ex    ← 基本的な例外処理
└── c06_flutter_exception_ex  ← Flutterの例外処理
````

## 実行方法
```bash
# dartのみで実行する場合
# 対象：c01_part_ex のみ
dart run lib/c01_part_ex/main.dart

# flutterを使う場合
# 対象：c01_part_ex 以外
flutter run -t lib/c02_stateless_widget_ex/main.dart
```
