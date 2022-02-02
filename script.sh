#!/bin/bash
sleep 30
mysql -u $USER_BM_DATABASE -p$PASSWD_BM_DATABASE -h $HOST_BM_DATABASE $NAME_BM_DATABASE < /var/www/html/schema.sql 
apache2ctl -D FOREGROUND
