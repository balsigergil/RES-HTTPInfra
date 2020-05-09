FROM node

LABEL authors="Gil Balsiger, Julien Béguin"

WORKDIR /usr/src/app

COPY . .

RUN yarn install

RUN yarn run build

CMD ["yarn", "run", "start:prod"]