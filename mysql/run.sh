#!/bin/bash
# @Author: Noaghzil
# @Date:   2023-04-24 23:26:55
# @Last Modified by:   Noaghzil
# @Last Modified time: 2023-04-26 00:55:02
docker run --name mysql-container \
  -v /Users/noaghzil/Github/dockfile_demo/mysql/conf.d/mysql.cnf:/etc/mysql/conf.d/mysql.cnf  \
  -v /Users/noaghzil/Github/dockfile_demo/mysql/data:/var/lib/mysql \
  -v   /Users/noaghzil/Github/dockfile_demo/mysql/logs:/var/log/mysql  \
  -p 20030:3306 
  -e MYSQL_ROOT_PASSWORD=xxx \
  mysql:latest
