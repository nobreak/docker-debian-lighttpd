# docker-debian-lighttpd



## Usage


### Build

```
$ docker build -t debian-lighttpd .
```

### Run

```
$ docker run -d --name=debian-lighttpd -p 80:80 -v $PWD/html/:/var/www/ debian-lighttpd

```


### open terminal

```
$ docker exec -i -t debian-lighttpd bash
```

### copy

```
$ docker cp [options] CONTAINER:PATH LOCALPATH|-
$ docker cp [options] LOCALPATH|- CONTAINER:PATH
```



