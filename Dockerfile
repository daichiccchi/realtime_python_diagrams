# ベースイメージ
FROM python:3.11-slim

# 必要パッケージのインストール
RUN apt-get update && apt-get install -y \
    graphviz \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y \
    fonts-noto-cjk \
    fontconfig

# Pythonパッケージのインストール
RUN pip install diagrams watchdog

# 作業ディレクトリの設定
WORKDIR /app

# ホスト側からマウント予定のディレクトリ
VOLUME ["/app"]

# デフォルトの起動コマンド（対話モード）
CMD bash -c "python watch_diagram.py & exec bash"
