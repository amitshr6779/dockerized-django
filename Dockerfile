FROM mysql:5.6
#ENV MYSQL_USER root
ENV MYSQL_DATABASE payrolldb
ENV MYSQL_ROOT_PASSWORD root
COPY my.cnf /etc/mysql/
COPY ./SQL /docker-entrypoint-initdb.d/
