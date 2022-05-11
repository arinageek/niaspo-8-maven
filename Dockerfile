FROM maven:latest
WORKDIR /
COPY . .
RUN mvn clean
RUN mvn package
CMD java -jar ./target/maven-app-1.0-SNAPSHOT.jar