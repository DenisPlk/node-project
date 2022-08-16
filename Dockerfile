FROM node

RUN mkdir -p /home/test-app

COPY . /home/test-app

WORKDIR /home/test-app

RUN cd /home/test-app/app \
    npm start 

CMD ["server.js"]

