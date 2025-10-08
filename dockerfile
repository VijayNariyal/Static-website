FROM nginx

WORKDIR /app

ADD https://github.com/VijayNariyal/Static-website/archive/refs/heads/main.zip .

RUN apt-get update && apt-get upgrade

RUN apt-get install unzip

RUN unzip main.zip

RUN cp -r Static-website-main/* /usr/share/nginx/html

EXPOSE 80
