# all docker files start with FROM
#starting with a base image of node 18
FROM  node:18-alpine3.16

# setup our working directory within the container
WORKDIR /src/

#copy our code from the host machine to the container
COPY . .

# install our dependencies
RUN npm install

# expose the port we want to run our application on
EXPOSE 3000

# run our application - has to be written in an array
CMD ["npm", 'start']

# added line 9 in our package json