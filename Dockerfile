# Use a Node.js image
FROM node:18

WORKDIR /app

COPY ./curiosity-ui ./curiosity-ui
COPY ./demo ./demo

RUN cd /app/curiosity-ui && npm install && npm run build && npm link

RUN cd /app/demo && npm install && npm link "curiosity-ui"

EXPOSE 5173
CMD ["npm", "run", "dev", "--prefix", "demo"]
