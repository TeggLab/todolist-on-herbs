FROM node:14.16.0-alpine3.13
WORKDIR /app
COPY . .
WORKDIR /app/backend
RUN npm install
EXPOSE 4000
WORKDIR /app/frontend
RUN npm install
EXPOSE 3000
RUN chmod o=x /app/script.sh
CMD ["/app/script.sh"]