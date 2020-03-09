cat 31
#Force quit and delete all the services on the local swarm, in one command.
docker service ls
cat 32
#Force quit and delete all the containers (whatever their status), in one command.
docker ps -a
cat 33
#Delete all the container images stored on the Char virtual machine, in one command as well.
docker images ls
$(cat 34)
docker-machine ls

wc -l 31 32 33 34