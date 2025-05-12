# Use a Node.js image
FROM node:18

WORKDIR /app

COPY ./curiosity-ui ./curiosity-ui
COPY ./demo ./demo

WORKDIR /app/curiosity-ui
RUN npm install && npm run build && npm link

WORKDIR /app/demo
RUN npm install && npm link curiosity-ui

EXPOSE 5173
CMD ["npm", "run", "dev", "--prefix", "demo"]
