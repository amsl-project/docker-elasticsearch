docker-elasticsearch
===============

A Dockerized elasticsearch-rdf-indexserver.

## Prepare resources

Switch to your rdf-indexer checkout, build the war files and copy the erm war file to this repository:
```
$ cp target/erm*.war <here>/erm.war
```

## Build container
```
$ docker build -t indexserver .
```

## Start a container

Then run the container. It executes a tomcat webserver and an elasticsearch instance

```
 $ docker run -d -p 8080:8080 -p 9200:9200 --name rdfindexer indexserver
```

Visit http://localhost:8080/erm to check the index server gui

## Tomcat Admin
You may also access the tomcat administration at http://localhost:8080/manager/html
Login: admin
Password: password

## Bash
For debugging you can also open a shell in the container:
```
docker exec -it elasticsearchindex bash
```