FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

ENV PORT=3000

RUN yarn run dev

EXPOSE 3000

CMD [ "yarn", 'run', 'dev' ]