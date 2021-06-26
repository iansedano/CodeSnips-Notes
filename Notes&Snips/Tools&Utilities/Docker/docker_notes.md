docker run -d -p 80:80 docker/getting-started

-d - run the container in detached mode (in the background)
-p 80:80 - map port 80 of the host to port 80 in the container
docker/getting-started - the image to use



---

git clone https://github.com/dockersamples/node-bulletin-board
cd node-bulletin-board/bulletin-board-app

docker build --tag bulletinboard:1.0 .

---


Create a file named Dockerfile in the same folder as the file package.json with the following contents.

FROM node:12-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]

docker build -t getting-started .

docker run -dp 3000:3000 getting-started

UPDATING

update source files

docker build -t getting-started .

docker run -dp 3000:3000 getting-started

--ERROR---

Replacing our Old Container
To remove a container, it first needs to be stopped. Once it has stopped, it can be removed. 

docker ps (like ls)

docker stop <the-container-id>

docker rm <the-container-id>

You can stop and remove a container in a single command by adding the "force" flag to the docker rm command. For example: docker rm -f <the-container-id>


SHARING

To push an image, we first need to create a repo on Docker Hub.

Go to Docker Hub and log in if you need to.

Click the Create Repository button.

For the repo name, use getting-started. Make sure the Visibility is Public.

Click the Create button!


Login to the Docker Hub using the command docker login -u YOUR-USER-NAME.

docker tag getting-started YOUR-USER-NAME/getting-started

docker push YOUR-USER-NAME/getting-started



Running our Image on a New Instance

Now that our image has been built and pushed into a registry, let's try running our app on a brand new instance that has never seen this container image! To do this, we will use Play with Docker.

Open your browser to Play with Docker.

Log in with your Docker Hub account.

Once you're logged in, click on the "+ ADD NEW INSTANCE" link in the left side bar. (If you don't see it, make your browser a little wider.) After a few seconds, a terminal window will be opened in your browser.


In the terminal, start your freshly pushed app.


docker run -dp 3000:3000 YOUR-USER-NAME/getting-started
You should see the image get pulled down and eventually start up!

Click on the 3000 badge when it comes up and you should see the app with your modifications! Hooray! If the 3000 badge doesn't show up, you can click on the "Open Port" button and type in 3000.


Persisting our DB


run docker101tutorial
then getting-started...

