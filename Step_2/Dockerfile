FROM node

LABEL authors="Gil Balsiger, Julien Béguin"

WORKDIR /usr/src/app

COPY . .

RUN npm install --only=production

RUN npm run build

CMD ["node", "dist/main"]