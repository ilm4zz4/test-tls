FROM nginx:latest 
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY index.html /var/www/
COPY data/certs/myCA.pem /usr/local/share/ca-certificates/
