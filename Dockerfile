FROM node:lts-alpine
WORKDIR /usr/app
COPY package*.json ./
RUN npm install -g npm@10.2.0
RUN npm install
COPY . .
EXPOSE 8080
CMD ["npm", "start"]