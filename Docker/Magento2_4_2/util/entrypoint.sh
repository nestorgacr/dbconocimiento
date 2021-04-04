#!/bin/bash
service php7.3-fpm start
service apache2 start 
service cron start
service ssh start
tail -f /dev/null