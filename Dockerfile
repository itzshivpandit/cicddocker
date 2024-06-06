FROM ubuntu
RUN apt-get update -y && apt-get install apache2 git -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FORGROUND 
VOLUME ["demo"]
EXPOSE 100
CMD ["apache2","start"]
