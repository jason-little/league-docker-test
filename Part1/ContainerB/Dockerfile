FROM quantumobject/docker-cacti

ENV TZ=America/Toronto

COPY disk_io.xml /usr/share/cacti/resource/snmp_queries/disk_io.xml
COPY alldb_backup.sql /var/backups/alldb_backup.sql
COPY rra.tar.gz /var/backups/rra.tar.gz

RUN sed -i 's/;date.timezone =/date.timezone = "America\/Toronto"/g' /etc/php5/cli/php.ini
RUN sed -i 's/;date.timezone =/date.timezone = "America\/Toronto"/g' /etc/php5/apache2/php.ini
RUN sed -i -e 's/5/1/' /etc/cron.d/cacti
