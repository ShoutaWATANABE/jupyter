# jupyter

## コマンド

コンテナ作成
`docker-compose build`

起動
`docker-compose up`

以下の文言がログに出るので、`localhost:8888?token=xxxxxxxxxxxxxxxxxxxxxx` にアクセス。

```
 To access the notebook, open this file in a browser:
jupyterlab_1  |         file:///root/.local/share/jupyter/runtime/nbserver-6-open.html
jupyterlab_1  |     Or copy and paste one of these URLs:
jupyterlab_1  |         http://(********** or 127.0.0.1):8888/?token=xxxxxxxxxxxxxxxxxxxxxx
```

停止
`docker-compose stop`

## 備考

Dockerfile内で各種ライブラリをインストールしているので、必要なものがあれば追加してrebuild。

MeCabは新語辞書を導入している。
https://github.com/neologd/mecab-ipadic-neologd
