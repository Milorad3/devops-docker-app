FROM node:18-alpine

WORKDIR /app

# prvo kopiramo package fajlove
COPY package*.json ./

# instaliramo dependencies (pg)
RUN npm install

# kopiramo ostatak koda
COPY . .

EXPOSE 3000

CMD ["node", "app.js"]