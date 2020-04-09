#!/bin/bash

#Generate certificates
rm -rf data
DST=./data/certs
mkdir -p ${DST}
openssl genrsa -des3 -out ${DST}/myCA.key 2048
openssl req -x509 -new -nodes -key ${DST}/myCA.key -sha256 -days 1825 -out ${DST}/myCA.pem

openssl genrsa -out ${DST}/dev.test.com.key 2048

openssl req -new -key ${DST}/dev.test.com.key -out ${DST}/dev.test.com.csr 

openssl x509 -req -in ${DST}/dev.test.com.csr -CA ${DST}/myCA.pem -CAkey ${DST}/myCA.key -CAcreateserial -out ${DST}/dev.test.com.crt -days 1825 -sha256 -extfile dev.test.com.ext 

rm -rf nginx/data
cp -r data nginx
cp -r data tomcat-catalina