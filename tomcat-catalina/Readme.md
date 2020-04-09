# Example of tomcat SSL configuration
### To build 
```
docker build --no-cache -t tomcat-server-test-img .
```

### To run a container
```
docker container run --rm --name test -v `pwd`:/root  -p 80:80 -p 443:443 tomcat-server-test-img 
```

