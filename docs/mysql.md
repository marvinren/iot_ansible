

## 数据库

建立双主mysql

| 主机IP | 数据库名称 |root密码|数据所在位置
|:---------------|:-------------------|:-------------|:-------------|
|10.12.3.2|geic_manage|4KRckdKc8d5YMiMh|/data/mysql|
|10.12.3.9|geic_manage|4KRckdKc8d5YMiMh|/data/mysql|




## 重装系统（可选择）
1. 重装系统
2. 修改root账号密码
3. 挂载硬盘
```sh
mkdir /data
mount /dev/vdb /data
mount -o remount,rw /
```
## 跳板机
ssh-copy-id root@xx.xx.xx.xx
ansible执行主机的id_rsa.pub拷贝到新主机的~/.ssh/authorized_keys里
