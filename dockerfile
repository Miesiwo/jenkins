FROM node:latest

WORKDIR /my-app

COPY . .

RUN npm install
RUN npm i && npm run build 
RUN npm i -g serve

CMD ["serve","-s", "build"]