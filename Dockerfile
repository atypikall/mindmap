FROM node:12.16
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build

FROM socialengine/nginx-spa:latest

#CHMOD for the rights of the app
RUN chmod -R 777 /app
