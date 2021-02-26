With bind mounts, we control the exact mountpoint on the host. We can use this to persist data, but is often used to provide additional data into containers. When working on an application, we can use a bind mount to mount our source code into the container to let it see code changes, respond, and let us see the changes right away.



Starting a Dev-Mode Container
To run our container to support a development workflow, we will do the following:

Mount our source code into the container
Install all dependencies, including the "dev" dependencies
Start nodemon to watch for filesystem changes


docker run -dp 3000:3000 `
    -w /app -v "$(pwd):/app" `
    node:12-alpine `
    sh -c "yarn install && yarn run dev"

-dp 3000:3000 - same as before. Run in detached (background) mode and create a port mapping
-w /app - sets the "working directory" or the current directory that the command will run from
-v "$(pwd):/app" - bind mount the current directory from the host in the container into the /app directory
node:12-alpine - the image to use. Note that this is the base image for our app from the Dockerfile
sh -c "yarn install && yarn run dev" - the command. We're starting a shell using sh (alpine doesn't have bash) and running yarn install to install all dependencies and then running yarn run dev. If we look in the package.json, we'll see that the dev script is starting nodemon.



see logs by 

docker logs -f <container-id>


Now all changes should be instant.

