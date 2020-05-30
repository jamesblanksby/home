FROM node:13

WORKDIR /usr/src/

RUN git clone --single-branch -b develop https://github.com/jamesblanksby/vision.git /vision && \
    cp -r /vision/* /usr/src/ && \
    rm -fr /vision

RUN npm install -g gulp && \
    npm install && \
    gulp scss

CMD ["npm", "start"]
EXPOSE 8060
