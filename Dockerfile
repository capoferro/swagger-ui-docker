FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install unzip -y
RUN apt-get install nginx -y

RUN service nginx stop

RUN mkdir /swagger

ADD swagger /etc/nginx/sites-available/
RUN cd /etc/nginx/sites-enabled/ && ln -s ../sites-available/swagger
RUN rm -f /etc/nginx/sites-enabled/default

RUN echo 'daemon off;' >> /etc/nginx/nginx.conf

ADD https://github.com/wordnik/swagger-ui/archive/master.zip /swagger/

WORKDIR /swagger
RUN unzip master.zip 
RUN mv swagger-ui-master/dist/* .

EXPOSE 80

ENTRYPOINT nginx