FROM debian

RUN apt-get update -y && apt-get upgrade -y; apt-get install wget lbzip2 -y;
RUN adduser --disabled-password --gecos "" teamspeaker
RUN su teamspeaker

WORKDIR /home/teamspeaker

RUN wget https://files.teamspeak-services.com/releases/server/3.11.0/teamspeak3-server_linux_amd64-3.11.0.tar.bz2 && tar -xf teamspeak3-server_linux_amd64-3.11.0.tar.bz2
RUN rm teamspeak3-server_linux_amd64-3.11.0.tar.bz2

WORKDIR teamspeak3-server_linux_amd64

EXPOSE 9987/udp 10011 30033

ENTRYPOINT bash ts3server_minimal_runscript.sh license_accepted=1
#ENTRYPOINT bash ts3server_startscript.sh start license_accepted=1

#docker build -t ex01 .
#docker run -it --rm -p9987:9987/udp -p10011:10011 -p30033:30033 ex01




