FROM node:14-alpine
WORKDIR /usr/src/app
COPY app/package*.json ./
RUN apk add --no-cache tini
RUN npm install
COPY app/ .
EXPOSE 3000
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "server.js"]



