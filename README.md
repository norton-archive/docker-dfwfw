# docker-dfwfw
Docker musings for an dfwfw container

See [Makefile](./Makefile) for details.

```
$ make

$ docker ssh dev

Edit and save the profile file to add the "--iptables=false" line:

$ sudo vi /var/lib/boo2docker/profile
$ cat /var/lib/boot2docker/profile

EXTRA_ARGS='
--label provider=virtualbox
--iptables=false

'
CACERT=/var/lib/boot2docker/ca.pem
DOCKER_HOST='-H tcp://0.0.0.0:2376'
DOCKER_STORAGE=aufs
DOCKER_TLS=auto
SERVERKEY=/var/lib/boot2docker/server-key.pem
SERVERCERT=/var/lib/boot2docker/server.pem

$ sudo /etc/init.d/docker restart

$ exit
```

## Prerequisites (Mac OS X)

- https://github.com/norton/docker-machine
- https://github.com/norton/dfwfw
