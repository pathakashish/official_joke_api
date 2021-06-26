FROM node:14.17.1-alpine
USER node
WORKDIR /home/node

COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm install
 
COPY . .
ENTRYPOINT ["npm", "start"]
