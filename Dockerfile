FROM nginx:1.25.3

RUN apt-get update && apt-get -y upgrade && apt-get clean

COPY index.html hero.jpg /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
