FROM node:20-bullseye-slim

WORKDIR /app

COPY package.json ./
RUN npm install && npm run build
COPY . .


EXPOSE 8001

CMD ["npm", "start"]