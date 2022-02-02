FROM debian

RUN apt-get update && apt install -y apache2 mariadb-client libapache2-mod-php7.4 php7.4 php7.4-mysql && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN rm /var/www/html/index.html
COPY bookmedik /var/www/html/
ADD script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh

ENV USER_BM_DATABASE admin
ENV PASSWD_BM_DATABASE admin
ENV HOST_BM_DATABASE servidor_mysql
ENV NAME_BM_DATABASE bookmedik

CMD ["./usr/local/bin/script.sh"]

