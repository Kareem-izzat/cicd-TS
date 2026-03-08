
FROM --platform=linux/amd64 node:22-slim

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

ENV PORT=8991
EXPOSE 8991
CMD ["node", "dist/main.js"]


