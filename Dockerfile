FROM node:12.18.1

WORKDIR /app

COPY package.json package-lock.json

#Ngninx server that hundle pushState
FROM socialengine/nginx-spa:latest

#Install package and build app
RUN npm install

COPY . .

RUN npm run build

#Copy the build into app
COPY ./dist /app

#CHMOD for the rights of the app
RUN chmod -R 777 /app
