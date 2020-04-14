# Home Assistant for Balena.io

This is a docker-compose.yml file that I use in my balena.io cloud instance. When using the following containers do not forget to add the environment varaibles required.

1. MariaDB

   - MYSQL_USER: Home Assistan (HA) user used to connect to MariaDB; this user will be created at container startup.

   - MYSQL_PASSWORD : HA MariaDB password used to connect to MariaDB; this user will be created at container startup

   - MYSQL_DATABASE : this is the Home Assistant (HA) DB, HA will generate the tables, for that you need to configure your configure.yaml file accordingly:
   ```
      recorder:
        purge_keep_days: 10
        purge_interval: 1
        db_url: mysql://MYSQL_USER:MYSQL_PASSWORD@192.168.187.28/ha_db?charset=utf8
   ```
   - MYSQL_ROOT_PASSWORD: MariaDB root password

2. APPDaemon

   - TOKEN: token that you generate in Home Assistant
   - HA_URL: Home Assistant URL (http://homeassiatan:8123)
   - DASH_URL: APPDaemon url including port (http://APPDaemon:5050)

For all the rest you will find plenty of information in the WEB and I am the kind of person that hates rewriting existing documentation.
