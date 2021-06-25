seeing in practice

Start a ubuntu container that will create a file named /data.txt with a random number between 1 and 10000.

docker run -d ubuntu bash -c "shuf -i 1-10000 -n 1 -o /data.txt && tail -f /dev/null"

The first portion of the command picks a single random number and writes it to /data.txt. The second command is simply watching a file to keep the container running.


Validate we can see the output by exec'ing into the container. To do so, open the Dashboard and click the first action of the container that is running the ubuntu image.

You will see a terminal that is running a shell in the ubuntu container. Run the following command to see the content of the /data.txt file. Close this terminal afterwards again.

cat /data.txt

If you prefer the command line you can use the docker exec command to do the same. You need to get the container's ID (use docker ps to get it) and get the content with the following command.

docker exec <container-id> cat /data.txt

You should see a random number!

---

Now, let's start another ubuntu container (the same image) and we'll see we don't have the same file.

docker run -it ubuntu ls /

And look! There's no data.txt file there! That's because it was written to the scratch space for only the first container.

Go ahead and remove the first container using the docker rm -f command.



Volumes provide the ability to connect specific filesystem paths of the container back to the host machine. If a directory in the container is mounted, changes in that directory are also seen on the host machine. If we mount that same directory across container restarts, we'd see the same files.

There are two main types of volumes. We will eventually use both, but we will start with named volumes.


--

Create a volume by using the docker volume create command.

docker volume create todo-db\
docker volume ls
docker volume inspect todo-db

Stop the todo app container once again in the Dashboard (or with docker rm -f <id>), as it is still running without using the persistent volume.

Start the todo app container, but add the -v flag to specify a volume mount. We will use the named volume and mount it to /etc/todos, which will capture all files created at the path.

docker run -dp 3000:3000 -v todo-db:/etc/todos getting-started

Once the container starts up, open the app and add a few items to your todo list.

Remove the container for the todo app. Use the Dashboard or docker ps to get the ID and then docker rm -f <id> to remove it.

Start a new container using the same command from above.

Open the app. You should see your items still in your list!

Go ahead and remove the container when you're done checking out your list.