# product_management (for BACKEND) 

sudo yum update

sudo yum install java-17-amazon-corretto-headless

In IDE, change the database (after create RDS) information at line 1, 2 and 3

Go to VisualStudio Code, at the bottom shows "MAVEN"  -> choose Lifecycle -> clean -> build

Go to folder, select "target", copy jar 

Paste it to ec2-user directory (by default) in WinSCP (or any file transfer)

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


