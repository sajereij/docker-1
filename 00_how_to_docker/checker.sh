#to remove pre-existing Char
docker-machine rm Char -y
#docker-machine create --driver virtualbox Char
docker-machine create --driver --virtualbox-cpu-count "2" --virtualbox-memory "4096" Char
echo "***01-03***"
docker version

$(cat 01)
$(cat 02)
cat 03

echo "***04-09***"
$(cat 04)
docker images
$(cat 05)
$(cat 06)
docker ps
curl http://192.168.99.100:5000 tai curl http://192.168.99.101:5000
docker inspect -f  {{.HostConfig.RestartPolicy}} overlord
$(cat 07)
docker inspect
cat 08 && cat 09
"echo time to execute 08 and 09"
#8: whoami -> root after exit 
#docker ps -a
#git clone https://github.com/docker/docker.git
#echo "int   main(){return (0);}" >> main.c
$(cat 10)
$(cat 11)
$(cat 12)
$(cat 13)
echo "does the above contain MYSQL_ROOT_PASSWORD is set to Kerrigan and that MYSQL_DATABASE is set to zerglings"
docker inspect spawning-pool
#shows hatchery mounted at destination var/lib/mysql
docker inspect -f {{.HostConfig.RestartPolicy}} spawning-pool
echo "next will ask for a password "Kerrigan""
docker exec -it spawning-pool mysql -uroot -p
show databases;
echo "above will show zerglings"

$(cat 14)
echo "navigate to http://192.168.99.100:8080 configure and install"
$(cat 15)
echo "navigate to http://192.168.99.100:8081 access spawning pool and verify tables"
$(cat 16) || tsekkaa viela
$(cat 17) || tsekkaa viel
#onko spawning-pool viela olemassa?
$(cat 18)
docker exec -it overlord /bin/sh -c "kill 1"
docker inspect -f '{{.RestartCount}}' overlord
echo "above restart count should be incremented one"

# option for question 14:
#docker run -d --name lair -p 8080:80 --link spawning-pool -e WORDPRESS_DB_HOST=spawning-pool -e WORDPRESS_DB_NAME=zerglings -e WORDRESS_DB_USER=root -e WORDPRESS_DB_PASSWD=Kerrigan wordpress

