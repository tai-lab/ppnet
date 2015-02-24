FROM gliderlabs/alpine

RUN apk-install nginx

RUN mkdir /tmp/nginx

WORKDIR ../..

ADD nginx.conf /etc/nginx/nginx.conf

ADD www /usr/html

EXPOSE 80

CMD ["nginx"]
