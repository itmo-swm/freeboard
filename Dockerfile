FROM node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install -g grunt http-server
RUN npm install
RUN grunt
EXPOSE 8080

CMD [ "http-server" ]
