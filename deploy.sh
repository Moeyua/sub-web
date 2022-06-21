#!/usr/bin/expect -f
set file dist
set serverPath /usr/share/nginx/html/sub-web
# 改为服务器用户名
set user root
# ip改为服务器ip
set host 43.142.138.244
# 改为服务器密码
set password fwd!uSkeT5t*Vp
set timeout -1
spawn scp -r $file $user@$host:$serverPath
expect "*password:*"
send "$password\r"
expect eof
