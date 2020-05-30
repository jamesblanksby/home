FROM node:13

WORKDIR /usr/src/

COPY $PWD/storage/package.json .
RUN npm install --production

EXPOSE 8060

CMD ["npm", "start"]
