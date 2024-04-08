FROM node

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm install
RUN npm install mongodb


COPY . /app

EXPOSE 80

CMD ["node", "app.js"]