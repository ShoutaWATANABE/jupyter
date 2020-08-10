FROM continuumio/anaconda3:2019.03

RUN pip install --upgrade pip && \
    pip install wheel numpy==1.16.4 scipy scikit-learn pandas flask gevent gunicorn autopep8 japanize-matplotlib joblib python-crfsuite gensim tensorflow==1.14.0 keras==2.3.1 jaconv pyvis bs4
RUN apt-get update \
    && apt-get install -y mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file sudo
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git \
    && cd mecab-ipadic-neologd \
    && bin/install-mecab-ipadic-neologd -n -y
RUN pip install mecab-python3 WordCloud

# nodejsの導入
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
    && sudo apt-get install -y nodejs
ADD ./Cica-Regular.ttf ./Cica-Regular.ttf
