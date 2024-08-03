FROM node:alpine3.10

RUN mkdir /app

WORKDIR /app

copy package.json /app

RUN npm install

COPY . /app

EXPOSE 8080

CMD ["node", "index.js"]