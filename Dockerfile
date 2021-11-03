FROM node:12
# コンテナ内にアプリケーションを配置する場所を指摘
WORKDIR /usr/src/app

# アプリケーションの依存関係をインストールする
COPY package*.json ./

RUN npm install

# 本番用にコードを作成している場合は
# RUN npm install --only=production

# アプリケーションソースコードをコンテナ内にコピーする
COPY . .

EXPOSE 8080

# ランタイム定義するCMDを使ってアプリケーションを実行する
CMD ["node", "server.js"]