

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
