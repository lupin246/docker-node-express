FROM node:15
WORKDIR /app
COPY package.json .
RUN npm i -g pnpm
RUN pnpm install
COPY . ./
ENV PORT 3000
EXPOSE $PORT
CMD ["npm", "run", "dev"]