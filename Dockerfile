FROM node:12.16
RUN npm install
RUN npm run build

COPY ./dist /app

FROM socialengine/nginx-spa:latest

#CHMOD for the rights of the app
RUN chmod -R 777 /app
