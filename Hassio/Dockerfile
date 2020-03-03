FROM balenalib/armv7hf-ubuntu

CMD ["bash"]

RUN apt-get update \
    apt-get install -y bash jq curl avahi-daemon dbus software-properties-common apparmor-utils \
    apt-get install -y apparmor-utils apt-transport-https avahi-daemon ca-certificates curl dbus jq network-manager socat software-properties-common \
    curl -sSL https://get.docker.com | sh \
    /bin/bash -c "/etc/init.d/docker start" \ 
    curl -sL https://raw.githubusercontent.com/home-assistant/hassio-installer/master/hassio_install.sh | bash -s -- -d /home/user/docker/hassio
