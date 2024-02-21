FROM node:20.11.1-alpine3.19
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["node", "main.js"]