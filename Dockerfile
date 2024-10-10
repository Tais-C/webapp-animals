FROM node:20-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY src src

COPY tests tests

EXPOSE 3000
CMD ["yarn", "start"]


