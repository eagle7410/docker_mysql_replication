FROM mysql:5.7.15

COPY ./cnf/mysql_connector.sh /mysql_connector.sh
COPY ./cnf/master/config.cnf /etc/mysql/conf.d/config.cnf
#RUN chmod 777 /etc/mysql/conf.d/config.cnf
#RUN chmod 644 /etc/mysql/conf.d/*.cnf
RUN chmod +x /root/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
HEALTHCHECK CMD /healthcheck.sh
EXPOSE 3306 33060
CMD ["mysqld"]
