FROM node:14.16.0-alpine3.13
WORKDIR /app
COPY . .
RUN cd backend
RUN npm install
EXPOSE 4000
RUN npm start &
RUN cd ..
RUN cd frontend
RUN npm install
EXPOSE 3000
RUN pwd
RUN npm start