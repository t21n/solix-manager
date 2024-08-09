FROM node:20-alpine

WORKDIR /app

COPY . /app
RUN cd /app &&\
    npm install &&\
    npm run build

# Server

ENTRYPOINT ["/app/docker-entrypoint.sh"]
