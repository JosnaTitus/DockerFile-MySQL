FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_DATABASE pucsdStudents
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
ADD test.sql /docker-entrypoint-initdb.d
EXPOSE 3306 
