FROM node:14-alpine

# set the root folder inside the container
WORKDIR /usr/app

# copy all the files on the current directory to usr/app inside of the container
COPY ./package.json ./
RUN npm install

# using this order it will cache the node_modules if package.json doesn't change
COPY ./ ./

# commands to execute on container start
CMD ["npm", "start"]