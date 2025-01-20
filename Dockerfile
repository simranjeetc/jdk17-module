# Use the build argument to specify the DNS server
#ARG DNS_SERVER=8.8.8.8

FROM maven:3.8.1-openjdk-17-slim

WORKDIR /app

# Set custom Maven local repository
#ENV MAVEN_CONFIG=/app/.m2
# Set the DNS server in the container's resolv.conf
#RUN echo "nameserver $DNS_SERVER" > /etc/resolv.conf

# Copy only the pom.xml (or pom.xml + settings.xml) first to leverage Docker's cache
COPY pom.xml /app/

#RUN mvn dependency:go-offline

COPY . /app

RUN mvn test
# Run the tests, passing the custom local repository
#CMD ["mvn", "test", "-Dmaven.repo.local=/root/.m2/repository"]
CMD ["mvn", "test"]

