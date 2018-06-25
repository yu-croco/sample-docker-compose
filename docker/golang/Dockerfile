# 使用するGolangのイメージを指定する
FROM golang:1.8

# 必要なパッケージなどなどをインストールする
RUN apt-get update -qq && \
    apt-get install -y mysql-client vim

# ワーキングディレクトリを指定する
WORKDIR /go/src/sample_docker_compose

# sample_docker_compose直下のディレクトリを全てコンテナ上に載せる
ADD . .

# ファイルをビルド
RUN go build

# 環境変数を設定
ENV PATH /go/bin:$PATH
