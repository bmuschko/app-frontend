FROM node:20.11.1-bullseye-slim
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["node", "main.js"]