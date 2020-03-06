bash 20
docker node ls
echo "above shows Char hostname and manager status"
cat 21
bash 21
bash 22
docker node ls
cat 23
bash 23
bash 24
bash 25
docker ps orbital-command
echo "above shows status running"
docker service inspect -f {{.Spec.TaskTemplate.ContainerSpec.Env}} orbital-command
echo "above shows two env vars user and password"
bash 26
docker service ps engineering-bay
echo "above shows status running and 2 replicas"
docker service inspect -f \"{{.Spec.TaskTemplate.ContainerSpec.Env}} engineering-bay
echo "above shows two env vars user and password for orbital-command"
bash 27
bash 28
bash 29
docker service ps marines
echo "above shows status running and 2 replicas"
docker service inspect -f \"{{.Spec.TaskTemplate.ContainerSpec.Env}} engineering-bay
echo "above shows two env vars user and password for orbital-command"
docker service logs marines
bash 30
docker service ps marines
echo "shows running with 20 replicas, not stopped just updated"
