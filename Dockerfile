# Use Node v8 LTS base image
FROM node:8

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# bundle app source
COPY . .

EXPOSE 8100

CMD [ "npm", "start" ]
