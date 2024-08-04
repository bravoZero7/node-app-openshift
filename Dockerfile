FROM node:18-alpine

RUN mkdir /app

WORKDIR /app

COPY package.json /app

RUN npm install --verbose

COPY . /app

RUN npm run verify

RUN echo $(ls -1 /.cache/Cypress/)

EXPOSE 3001

CMD ["npm", "test"]