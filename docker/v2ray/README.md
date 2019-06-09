### docker-v2ray

### usage CentOS 7 x64

$ yum install subversion

$ yum -y install docker

$ yum install python-pip -y
$ pip install docker-compose

$ svn checkout https://github.com/HeminWon/learn/trunk/docker/v2ray

$ systemctl start docker
$ docker-compose up -d