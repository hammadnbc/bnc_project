FROM node:10

WORKDIR /app
ENV NODE_ENV production

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["start"]