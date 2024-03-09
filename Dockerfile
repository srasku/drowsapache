FROM httpd:2.4

COPY index.html /usr/local/apache2/htdocs/

RUN htpasswd -bc /usr/local/apache2/conf/.htpasswd user password
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
