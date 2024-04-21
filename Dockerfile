FROM node:20-slim
WORKDIR /app
COPY . .

RUN npm install -g pm2 npm
RUN npm ci
RUN npm run build

EXPOSE 3000

CMD pm2-runtime start pm2.json --env production
