FROM node:14.16.0-alpine3.13
WORKDIR /todolist
COPY . .
WORKDIR /todolist/backend
RUN npm install
EXPOSE 4000
WORKDIR /todolist/frontend
RUN npm install
EXPOSE 3000
RUN chmod o=x /todolist/script.sh
CMD ["/todolist/script.sh"]