FROM node:alpine
WORKDIR /app
COPY ./package.json ./package-lock.json ./
RUN npm ci && npm run build
COPY ./dist .
EXPOSE 4173
CMD [ "npm", "run", "preview" ]