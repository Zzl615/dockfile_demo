FROM mysql:latest

WORKDIR /app

COPY conf.d/mysql.cnf /etc/mysql/conf.d/mysql.cnf

EXPOSE 3306

ENV MYSQL_ROOT_PASSWORD=xxx

CMD ["mysqld"]
