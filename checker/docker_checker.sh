#
echo "***01-03***"
docker version
#removing Char
bash 01
bash 02
cat 03
bash 03
echo "***04-09***"
bash 04
docker images
bash 05
bash 06
docker ps
curl http:192.168.99.100//:5000
docker inspect -f  {{.HostConfig.RestartPolicy}} overlord
bash 07
docker inspect
cat 08
cat 09
"echo time to bash 08 and 09"
bash 10
bash 11
bash 12
bash 13
echo "does the above contain MYSQL_ROOT_PASSWORD is set to Kerrigan\"
and that MYSQL_DATABASE is set to zerglings"
docker inspect spawning-pool
docker inspect -f {{.HostConfig.RestartPolicy}} spawning-pool
show databases
echo "above will show zerglings"
echo "next will ask for a password"
docker exec -it spawning-pool mysql -uroot -p
bash 14
echo "navigate to http://ip:8080 configure and install"
bash 15
echo "navigate to http://ip:8081 access spawning pool and verify tables"
bash 16
bash 17
bash 18
docker exec -it overlord /bin/sh -c "kill 1"
docker inspect -f '{{.RestartCount}}' overlord
echo "above restart count should be incremented one"






