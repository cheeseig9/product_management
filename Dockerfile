FROM openjdk:11
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN ./mvnw package
EXPOSE 8080
CMD ["java", "-jar", "target/product_management.jar"]