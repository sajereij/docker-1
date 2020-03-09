echo "above shows Char hostname and manager status"
cat 20
#while in Char or ssh Char
$(cat 21)
#not necessary but: docker-machine env Aiur
#eval $(docker-machine env Aiur)
cat 22
docker node ls
$(cat 23)
$(cat 24)
$(cat 25)
#List all the services of the local swarm.
docker ps orbital-command
echo "above shows status running"
docker service inspect -f {{.Spec.TaskTemplate.ContainerSpec.Env}} orbital-command
echo "above shows two env vars user and password"
$(cat 26)
#Launch a 42school/engineering-bay service in two replicas and make sure that the service works properly (see the documentation provided at hub.docker.com). 
#This service will be named engineering-bay and will be on the overmind network.
docker service ps engineering-bay
echo "above shows status running and 2 replicas"
docker service inspect -f \"{{.Spec.TaskTemplate.ContainerSpec.Env}} engineering-bay
echo "above shows two env vars user and password for orbital-command"
cat 27
#shows attack
$(cat 28)
$(cat 29) == docker service ps marines
echo "above shows status running and 2 replicas"
docker service inspect -f \"{{.Spec.TaskTemplate.ContainerSpec.Env}} marines
echo "above shows two env vars user and password for orbital-command"
docker service logs marines
$(cat 30)
docker service ps marines
#docker service scale marines=20 OR docker service update --replicas=20 marines
echo "shows running with 20 replicas, not stopped just updated"
