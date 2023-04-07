# product_management

sudo yum update

sudo yum install java-17-amazon-corretto-headless

Go to VisualStudio Code

at the bottom shows "MAVEN"  -> choose Lifecycle -> clean -> build

Go to folder, select "target", copy jar 

Paste it to ec2-user directory (by default) in WinSCP (or any file transfer)

in Linux, type 
java -jar product_management-0.0.1-SNAPSHOT.jar
