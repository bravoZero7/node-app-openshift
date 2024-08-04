FROM node:18-alpine

RUN mkdir /app

WORKDIR /app

COPY package.json /app

RUN npm install --verbose

RUN chmod 777 -R node_modules

RUN node_modules/cypress node index.js --exec install --force true

COPY . /app

RUN npm run verify

RUN echo $(ls -1 /.cache/Cypress/)

EXPOSE 3001

CMD ["npm", "test"]