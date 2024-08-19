# docker build -t bedrock-proxy-endpoint .

FROM node:22-alpine

WORKDIR /opt/bedrock-proxy-endpoint

COPY . .

RUN npm install

EXPOSE 80
EXPOSE 443

CMD ["node", "server.js"]
