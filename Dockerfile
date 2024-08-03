FROM node:alpine3.10

ENV NODE_VERSION 18.20.4

RUN mkdir /app

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 3001

CMD ["npm", "test"]