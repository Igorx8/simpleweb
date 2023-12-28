# Use an existing docker image as a base
FROM alpine

# Download and install a dependency, if the order of the intructions here changes, it will not use the existing cache, however it will download and create a new cache
RUN apk add --update redis
RUN apk add --update gcc

# Tell the image what to do when it starts as a container
CMD ["redis-server"]


# Useful commands 
# that command open the shell inside of a container if exists - docker exec -it CONTAINERID sh
# that command open the shell after a run instruction - docker run -it IMAGENAME sh
# that command list all the containers - docker ps -all
# that command clear all the selected resources - docker (image/volume/container) prune
# that command await 10 seconds to shutdown the container - docker stop CONTAINERID
# command to quickly stop a container - docker kill CONTAINERID
# command to show logs - docker logs CONTAINERID
# command to create a default image - docker build -t imagename/applicationname:imageversionname .
# command to run a image in a selected port - docker run -p 3000:3000 IMAGEID


# now some instructions to get the same result of that image manually

# 1 - docker run -it alpine sh
# 2 - apk add --update redis
# 3 - open a new terminal and type docker ps to get the CONTAINERID, and then type, docker commit -c "CMD 'redis-server'" CONTAINERID       (on linux the string command will be 'CMD ["redis-server"]')
# 4 - the step 3 will return the id of the new image 