ARG NODE_VERSION=14-alpine
FROM node:${NODE_VERSION}
COPY package*.json ./
COPY src ./src
COPY public ./public
RUN npm install
COPY . .
EXPOSE $PORT
ENTRYPOINT ["npm", "start"]
