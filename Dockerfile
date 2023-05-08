# define from what image we want to build from
FROM node:18

# create a directory to hold the application code inside the image, this will be the working directory for your application
WORKDIR src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY ./src/app

EXPOSE 8080

# command to run your app
CMD [ "npm", "start" ]