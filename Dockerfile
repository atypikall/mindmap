#Ngninx server that hundle pushState
FROM socialengine/nginx-spa:latest

#Install npm
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm

#Install package and build app
RUN npm install
RUN npm build

#Copy the build into app
COPY ./dist /app

#CHMOD for the rights of the app
RUN chmod -R 777 /app
