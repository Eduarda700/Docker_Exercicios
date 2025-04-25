FROM nginx
RUN rm -rf /usr/share/nginx/html/*

COPY material-kit-master . /usr/share/nginx/html/ 

EXPOSE 8080