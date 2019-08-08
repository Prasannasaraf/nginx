FROM nginx:alpine-perl

COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir /public

COPY docker-entrypoint.sh /docker-entrypoint.sh 

COPY configvars.js.template /configvars.js.template 

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80