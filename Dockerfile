FROM node:18-alpine

RUN mkdir /app

WORKDIR /app

COPY package.json /app

RUN npm install --verbose

RUN apt-get install libgtk2.0-0t64 libgtk-3-0t64 libgbm-dev libnotify-dev libnss3 libxss1 libasound2t64 libxtst6 xauth xvfb

COPY . /app

RUN npm run verify

RUN echo $(ls -1 /.cache/Cypress/)

EXPOSE 3001

CMD ["npm", "test"]