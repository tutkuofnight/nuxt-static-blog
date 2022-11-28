# get an operating system

# install node runtime
FROM node:14

WORKDIR /app
# copy files to image
COPY package.json ./

# install dependencies
RUN npm install
COPY . . 
EXPOSE 3000

# run application
CMD ["npm" , "run" , "build"]
CMD ["npm" , "run" , "start"]



