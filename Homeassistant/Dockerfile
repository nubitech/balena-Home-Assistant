# FROM homeassistant/home-assistant:stable
FROM homeassistant/raspberrypi4-64-homeassistant:stable
COPY start.sh .
COPY gitupdate.sh /config
CMD [ "/bin/bash", "start.sh" ]
