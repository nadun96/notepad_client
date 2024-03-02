FROM node:18-alpine3.19
COPY package.json package-lock.json .
RUN npm install
COPY . .
RUN npm run build
CMD ["npm", "start"]