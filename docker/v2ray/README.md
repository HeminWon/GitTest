### docker-v2ray

### usage CentOS 7 x64

$ yum install subversion

$ yum -y install docker

$ yum install python-pip -y
$ pip install docker-compose

$ svn checkout https://github.com/HeminWon/learn/trunk/docker/v2ray

$ systemctl start docker
$ docker-compose up -d

$ docker exec -it 775c7c9ee1e1 /bin/bash

log:
rejected  v2ray.com/core/proxy/shadowsocks: failed to read IV > EOF

v2ray.com/core/proxy/vmess/encoding: invalid user

