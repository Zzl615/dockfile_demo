FROM python:3.6-alpine

LABEL maintainer="xxx@gmail.com"

ENV TZ=Asia/Shanghai

# 设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# apk设置国内更新源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk add --no-cache gcc musl-dev

COPY . /app

WORKDIR /app

# 更换pip源
RUN mkdir -p ~/.pip \
    && echo "[global]" > ~/.pip/pip.conf \
    && echo "index-url = https://mirrors.aliyun.com/pypi/simple/" >>  ~/.pip/pip.conf \
    && echo "[install]" >>  ~/.pip/pip.conf \
    && echo "trusted-host=mirrors.aliyun.com" >>  ~/.pip/pip.conf \
    && python3 -m ensurepip \
    && pip install --upgrade pip setuptools \
    && pip install -r /requirements.txt \
    && rm -rf ~/.cache

EXPOSE 8999

CMD []