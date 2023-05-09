FROM node:16-alpine

# ENV NODE_ENV production

WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json
COPY yarn.lock /usr/src/app/yarn.lock

RUN yarn

COPY . /usr/src/app

RUN yarn build

EXPOSE 4000

CMD ["node", "dist/index.js"]

USER node