FROM ft-rails:on-build
EXPOSE 3000
CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]

#docker build --no-cache -t app .
#docker run --name rails -it --rm -p 3000:3000 app

# rails s: launches server
# -b 0.0.0.0: bind to all IPs on the machine
# -p3000: running on port 3000