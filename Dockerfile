#specify the base Image


FROM node:alpine

WORKDIR /usr/app


# install some dependencies

COPY ./package.json ./

RUN npm install

COPY ./ ./

## Run the image

CMD ["npm", "start"]