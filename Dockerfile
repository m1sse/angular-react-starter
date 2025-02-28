FROM nginx:1.23.0-alpine

RUN chown -R nginx:nginx /var/log/nginx \
    && chown -R nginx:nginx /etc/nginx/nginx.conf 
 

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./angular/dist/angular-starter /var/www/html


EXPOSE 8080
