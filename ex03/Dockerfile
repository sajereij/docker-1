FROM debian
LABEL sajereij
# Default to supporting utf-8
ENV LANG=C.UTF-8
# Install required packages
RUN apt-get update -yq && \
    apt-get install vim ca-certificates openssh-server curl -yq && \
    apt clean && apt autoremove
#generate SSL
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FI/ST=Denial/L=Helsinki/O=Dis/CN=dev" -keyout /etc/ssl/private/gitlab.key -out /etc/ssl/certs/gitlab.crt
#install and configure gitlab
RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
RUN apt-get install gitlab-ce -y && \
    sed -i '29 c\ external_url "https://192.168.99.100"' /etc/gitlab/gitlab. && \
    echo "nginx['ssl_certificate'] = \"/etc/ssl/certs/gitlab.crt\"" >> /etc/gitlab/gitlab.rb && \
    echo "nginx['ssl_certificate_key'] = \"/etc/ssl/private/gitlab.key\"" >> /etc/gitlab/gitlab.rb && \
    echo "nginx['redirect_http_to_https'] = true" >> /etc/gitlab/gitlab.rb && \
    echo "gitlab_rails['gitlab_shell_ssh_port'] = 8022" >> /etc/gitlab/gitlab.rb

RUN adduser --disabled-password --gecos "" gitlab
RUN echo 'gitlab:echo' | chpasswd
# Expose web & ssh
EXPOSE 443 80 22
CMD service ssh start && \
    bash && (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null && \
    su gitlab