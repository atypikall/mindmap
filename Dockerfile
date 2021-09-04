#Node for install npm
FROM node:latest

#Ngninx server that hundle pushState
FROM socialengine/nginx-spa:latest

#Install package and build app
RUN npm install
RUN npm build

#Copy the build into app
COPY ./build /app

#CHMOD for the rights of the app
RUN chmod -R 777 /app
