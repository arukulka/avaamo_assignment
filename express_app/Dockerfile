#Using NodeJS Latest image
FROM node:latest
#Setting up the time to IST inside the container
RUN date
ENV TZ=Asia/Calcutta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN date
#Working Directory
WORKDIR /usr/src/app
#Copying all the dependecy package to the current directory
COPY package*.json ./
#Install all the denpendecies using npm install
#RUN npm ci --only=production
RUN npm install
COPY . .
#Exposing port 8080 to the HOST machine, where we can access the nodejs app.
EXPOSE 8080