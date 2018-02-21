# base image
FROM node:9.5

EXPOSE 3000

# set working directory
WORKDIR /home/node/app

# add `/home/node/app/node_modules/.bin` to $PATH
ENV PATH /home/node/app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json ./package.json
RUN npm install --silent
RUN npm install react-scripts@1.1.1 -g --silent

# start app
CMD ["npm", "start"]