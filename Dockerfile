FROM ubuntu:18.04

WORKDIR /home/app

COPY . .

RUN apt-get update \
  && apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get -y install nodejs \
  && npm install

EXPOSE 8888

ENTRYPOINT [ "npm", "start" ]
