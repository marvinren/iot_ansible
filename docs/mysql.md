
# 主要配置信息

|主机IP|安装软件|说明|安装目录|数据所在目录|相关配置信息|
|---------|-------------|------|-------------|-------------------|-------------------|
|10.12.3.2|mysql|双主热备:master_01|-|/data/mysql/data|port:3306 database: geic_manage username: geic password: Asiainfo@2018 root_password: Asiainfo@2018|
|10.12.3.9|mysql|双主热备:master_02|-|/data/mysql/data|port:3306 database: geic_manage username: geic password: Asiainfo@2018 root_password: Asiainfo@2018|
|10.12.3.2|oneproxy|mysql代理|/opt/oneproxy|-|port: 3307|
|10.12.3.3|redis|master|-|-|port:6379|
|10.12.3.4|redis|slave&Sentinel|-|-|port:6379 sential_port:26379|
|10.12.3.8|redis|slave&Sentinel|-|-|port:6379 sential_port:26379|
|10.12.3.11|redis|slave&Sentinel|-|-|port:6379 sential_port:26379|
|10.12.3.5|elasticsearch|-|-|-|-|
|10.12.3.7|elasticsearch|-|-|-|-|
|10.12.3.10|elasticsearch|-|-|-|-|

https://blog.csdn.net/u010648555/article/details/79430105


# Mysql
## 数据库

建立双主mysql

| 主机IP | 数据库名称 |root密码|数据所在位置
|:---------------|:-------------------|:-------------|:-------------|
|10.12.3.2|geic_manage|Asiainfo|/data/mysql|
|10.12.3.9|geic_manage|4KRckdKc8d5YMiMh|/data/mysql|




## 重装系统（可选择）
1. 重装系统
2. 修改登录密码
3. 配置安全组
4. 挂载硬盘
```sh
mkdir /data
mount /dev/vdb /data
mount -o remount,rw /
```


## 跳板机&免登录
```
ansible-playbook -i hosts add-sshkey.yml
```

## 安装mysql &mysql双主&代理安装
```
ansible-playbook -i hosts mysql.yml
```
```
CREATE DATABASE  If Not Exists geic_manage DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
```


# Redis
```
ansible-playbook -ihosts redis.yml
```

# Elasticsearch
```
ansible-playbook -ihosts elasticsearch.yml
```


