# product_management (for BACKEND) 

sudo yum update

sudo yum install java-17-amazon-corretto-headless

In IDE, change the database (after create RDS) information at line 1, 2 and 3

Find ProductController.java

Change front end IP address at line 16, @CrossOrigin(origins = "http://[front-end-address]:3000") 

Go to VisualStudio Code, at the bottom shows "MAVEN"  -> choose Lifecycle -> clean -> build (to export jar.jpg)

Go to folder, select "target", copy jar file

Paste or drag it to ec2-user directory (by default) in WinSCP (or any file transfer)

in Linux, type 

java -jar product_management-0.0.1-SNAPSHOT.jar

To test the working of database, use Postman, then copy public IP address

select POST and then paste it like (IP address):8080/saveProduct

paste the JSON like this
   
    {
    "productName": "product",
    
    "description": "description",
    
    "price": 2999.00,
    
    "status": "available" 
    }

=============

- Create new image:

docker build -t product_management .

- Run image:

docker run -d -p 8080:8080 --name product_app product_management

- Access into a container

docker exec -it product_app bash

ls 

- Force end process:

docker ps

docker rm product_app -f

- Delete docker image permanently:

docker image ls

docker rmi -f --no-prune [repository]
