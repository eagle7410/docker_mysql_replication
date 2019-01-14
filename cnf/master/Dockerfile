FROM mysql/mysql-server:5.7.23
COPY ./mysql_connector.sh /mysql_connector.sh
COPY ./config.cnf /etc/my.cnf

HEALTHCHECK CMD /healthcheck.sh
EXPOSE 3306 33060
CMD ["mysqld"]
