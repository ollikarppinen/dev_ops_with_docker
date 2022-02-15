FROM openjdk:8

RUN apt-get update && apt-get install -y --no-install-recommends git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && git clone https://github.com/docker-hy/material-applications.git

RUN cd material-applications/spring-example-project && ./mvnw package

CMD cd material-applications/spring-example-project && java -jar ./target/docker-example-1.1.3.jar
