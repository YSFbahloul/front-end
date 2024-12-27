FROM node:alpine

WORKDIR /app

COPY package.json ./

RUN npm install

RUN chmod -R 777 /app

COPY ./ ./

CMD ["npx", "ng", "serve", "--host", "0.0.0.0"]
