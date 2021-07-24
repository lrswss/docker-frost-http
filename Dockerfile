From arm32v7/tomcat:9-jre11
MAINTAINER Lars Wessels <docker@bytebox.org>

RUN wget https://repo.maven.apache.org/maven2/org/postgresql/postgresql/42.2.22/postgresql-42.2.22.jar
RUN mv postgresql-42.2.22.jar /usr/local/tomcat/lib/

RUN wget https://repo.maven.apache.org/maven2/net/postgis/postgis-jdbc/2.5.1/postgis-jdbc-2.5.1.jar
RUN mv postgis-jdbc-2.5.1.jar /usr/local/tomcat/lib/

RUN wget https://repo1.maven.org/maven2/de/fraunhofer/iosb/ilt/FROST-Server/FROST-Server.HTTP/1.14.0/FROST-Server.HTTP-1.14.0.war -O FROST-Server.war
RUN mv FROST-Server.war /usr/local/tomcat/webapps/FROST-Server.war && rm -f FROST-Server.war
