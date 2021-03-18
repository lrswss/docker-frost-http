From arm32v7/tomcat:9-jre11
MAINTAINER Lars Wessels <docker@bytebox.org>

RUN wget https://repo.maven.apache.org/maven2/org/postgresql/postgresql/9.4.1212/postgresql-9.4.1212.jar
RUN mv postgresql-9.4.1212.jar  /usr/local/tomcat/lib/

RUN wget https://repo.maven.apache.org/maven2/net/postgis/postgis-jdbc/2.5.0/postgis-jdbc-2.5.0.jar
RUN mv postgis-jdbc-2.5.0.jar /usr/local/tomcat/lib/ 

RUN wget https://repo1.maven.org/maven2/de/fraunhofer/iosb/ilt/FROST-Server/FROST-Server.HTTP/1.13.0/FROST-Server.HTTP-1.13.0.war -O FROST-Server.war
RUN mv FROST-Server.war /usr/local/tomcat/webapps/FROST-Server.war && rm -f FROST-Server.war
