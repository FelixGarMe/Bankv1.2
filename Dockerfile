# Dockerfile

FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Instala node-fetch para realizar solicitudes HTTP
RUN npm install node-fetch

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
