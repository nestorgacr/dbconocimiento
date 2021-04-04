FROM debian:latest

RUN apt update && \
    apt install -y curl apt-transport-https lsb-release ca-certificates mc && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \ 
    apt update && \
    apt -y install apache2 php-fpm php-bcmath php-curl php-gd php-intl php-mbstring php-xml php7.3-mysql php-zip php-soap php-xdebug\
    zip unzip vim less git composer sudo nodejs cron openssh-server && \
    npm install -g grunt-cli && \
    apt --purge autoremove -y && \
    apt clean 

RUN a2enmod proxy_fcgi setenvif rewrite headers && \
    a2enconf php7.3-fpm && \
    mkdir /run/php  && \
    ln -sf /dev/stdout /var/log/apache2/access.log && \
    useradd magento -m -s /bin/bash 

COPY ./util/entrypoint.sh /
COPY ./conf/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY --chown=magento:magento ./conf/xdebug.ini /var/www/html/shared/ 
COPY ./conf/sudo-magento /etc/sudoers.d/magento
COPY ./conf/envvars /etc/apache2/envvars
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN ln -sf /var/www/html/shared/xdebug.ini /etc/php/7.3/mods-available/xdebug.ini && \
    chmod 440 /etc/sudoers.d/magento

ENTRYPOINT [ "/entrypoint.sh" ]



