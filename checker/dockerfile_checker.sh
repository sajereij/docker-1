docker build ex00 --no-cache -t ex00
docker run -it --rm ex00
docker build ex01 --no-cache -t ex01
docker run -it --rm -p9987:9987/udp -p10011:10011 -p30033:30033 ex01
docker build ex02 --no-cache -t ft-rails:on-build
docker build --no-cache -t ex02 .
docker run --name rails -it --rm -p 3000:3000 ex02
docker build ex03 -t ex03
docker run -it --rm 