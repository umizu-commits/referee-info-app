# syntax = docker/dockerfile:1

ARG RUBY_VERSION=3.2.3
FROM ruby:$RUBY_VERSION-slim

# 必要なパッケージをインストール
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    build-essential \
    git \
    libpq-dev \
    nodejs \
    curl && \
    rm -rf /var/lib/apt/lists/*

# 作業ディレクトリ
WORKDIR /app

# Gem を先にインストール（キャッシュ効率化）
COPY Gemfile Gemfile.lock ./
RUN bundle install

# アプリのコードをコピー
COPY . .

# ポートを公開
EXPOSE 3000

# デフォルトコマンド（docker-compose.ymlで上書き可能）
CMD ["bash"]
