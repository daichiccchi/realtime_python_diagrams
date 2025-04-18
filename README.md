このプロジェクトは、[Python diagrams](https://diagrams.mingrammer.com/) ライブラリを使って構成図を描き、`watchdog` で `.py` ファイルの変更を検知し、自動的に構成図を再生成する開発支援ツールです。

Dockerで実行でき、リアルタイムで図を再描画します。

## セットアップ手順
### 1. Dockerイメージをビルド
```
$ make build
```
### 2. コンテナ起動
```
$ make run
```
これにより、以下が実行されます：
- watch_diagram.py がバックグラウンドで実行される
- generate_diagram.py の変更を検知して図を自動生成
- コンテナ内で bash が開かれるため、追加作業も可能

## プレビュー表示方法
生成された output.png を以下のように確認してください(どちらでも可)：
- VS Codeの「画像プレビュー」タブ
- ブラウザでファイルを開いて手動リロード

