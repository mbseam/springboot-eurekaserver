FROM java:8
VOLUME /tmp
ADD target/eureka-server-0.0.1-SNAPSHOT.jar eurekaserver.jar
RUN bash -c 'touch /eurekaserver.jar'
EXPOSE 8761
ENTRYPOINT ["java","-jar","/eurekaserver.jar"]