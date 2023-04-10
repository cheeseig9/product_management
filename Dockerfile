FROM openjdk:20
COPY target/product_management-0.0.1-SNAPSHOT.jar product_management-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/product_management-0.0.1-SNAPSHOT.jar"]