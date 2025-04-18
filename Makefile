# Dockerイメージ名
IMAGE_NAME=diagrams

# Dockerでdiagramsを実行するコマンド（現在のディレクトリを/appにマウント）
run:
	docker run -it --rm -v $(shell pwd):/app $(IMAGE_NAME)

# Dockerイメージをビルド
build:
	docker build -t $(IMAGE_NAME) .

# Dockerイメージを削除（オプション）
clean:
	docker rmi $(IMAGE_NAME)

