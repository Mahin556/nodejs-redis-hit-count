FROM node:18-alpine

WORKDIR /app

COPY package-lock.json .
COPY package.json .

RUN npm install

COPY app.js .

EXPOSE 80

CMD ["node", "app.js"]


