FROM mysql:5.7
ENV mysql_allow_empty_password yes
COPY init.sh mysql
RUN chmod +x /mysql/init.sh
COPY hjl.sql /mysql
RUN chmod +x /mysql/hjl.sql
CMD [ "sh","/mysql/init.sh" ]