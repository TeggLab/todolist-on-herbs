FROM node:14.16.0-alpine3.13
WORKDIR /todolist
COPY . .
WORKDIR /todolist/frontend
RUN npm install
EXPOSE 4000
WORKDIR /todolist/backend
RUN npm install
EXPOSE 4001
WORKDIR /todolist