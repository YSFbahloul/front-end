FROM node:18-alpine


WORKDIR /app


RUN npm install -g @angular/cli


COPY package*.json ./


RUN npm install


RUN chmod -R 777 /app


COPY . .


EXPOSE 4200


CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200", "--disable-host-check"]
