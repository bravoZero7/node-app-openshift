FROM node:18-alpine

RUN mkdir /app

WORKDIR /app

COPY package.json /app

RUN npm install --verbose

COPY . /app

EXPOSE 3001

CMD ["npm", "test"]