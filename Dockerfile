FROM nginx:alpine-perl

COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY .htpasswd /etc/nginx/.htpasswd

RUN mkdir /public
COPY docker-entrypoint.sh /docker-entrypoint.sh 
COPY configvars.js.template /configvars.js.template 

RUN echo "Hello World New World" > /usr/share/nginx/html/index.html

ENV ENV "DEV"

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80