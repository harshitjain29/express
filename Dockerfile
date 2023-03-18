FROM node:18-alpine

ENV PORT 3000
# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
# "./" ROOT
RUN npm install express
RUN npm install
RUN npm test
# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "npm", "run"]
