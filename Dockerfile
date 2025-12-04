from node:18-alpine
WORKDIR /app
copy package.json  package-lock.json ./
RUN npm install
copy . .
EXPOSE 3000
CMD ["npm", "run", "dev"]