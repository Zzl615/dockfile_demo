FROM nginx:stable-alpine

# 将本地的 nginx.conf 文件复制到容器内的 /etc/nginx/nginx.conf 路径下
COPY nginx.conf /etc/nginx/nginx.conf

# 将本地的 ssl 目录复制到容器内的 /etc/nginx/ssl 目录下
# COPY ssl /etc/nginx/ssl

# 将本地的 conf.d 目录下的所有 .conf 文件复制到容器内的 /etc/nginx/conf.d 目录下
COPY conf.d/*.conf /etc/nginx/conf.d/

RUN mkdir -p /var/log/nginx
