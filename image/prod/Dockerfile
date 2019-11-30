FROM ubuntu:latest
RUN apt update
RUN apt install -y nginx
ADD index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
