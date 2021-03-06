                                     DockerFile - Build image with loaded MYSQL schema
                                     
Problem Statement: -

      Dockerfile is used to create custome images in the docker. You can install binaries/packages in the base image and start the full fledged application in one go. You have to write a dockerfile which will build a mysql image with the default loaded student schema. 

Schema Details: -

     Student 
      {
        Name
        Roll no
        Address
        Mobile Number
        PAN Number
      }   

You need to write a create table and insert data queries in the test.sql file and load this file in the Dockerfile. Please use the database and table name mentioned below : 

      Database Name : pucsdSudents
      Table Name : studentDetails

To access the database pucsdStudents, you have to create the user in the MYSQL. Please use the username and password mentioned below :  

      Username : pucsd
      password : pucsd

Steps to solve this Assignment: -

1.	Pull the latest code i.e; Open terminal & type following command: -
          
          git clone https://github.com/JosnaTitus/DockerFile-MySQL.git

2.	Go to cloned repo-directory and Build image using command: -
  
          cd DockerFile-MySQL
          
          sudo docker build . -t assignment_2
          
3.	Start the container using command: -

          sudo docker run --name pucsd_assignment_2 -p 4040:4040 -d assignment_2

4.	Connect to MYSQL using a bash shell using command: -

          sudo docker exec -it pucsd_assignment_2 /bin/bash
 
5.	It will take you to the root, then start MYSQL with Username = pucsd and Password = pucsd using command: -

          mysql -upucsd -ppucsd

6.	After successful connection with MYSQL we can see Database = pucsdStudents and Table = studentDetails and we can get whole data using command: -
      
        •	Use pucsdStudents;
        •	Select * from studentDetails;

Before doing this, you can check your databases as well as table by using command: -

        •	show databases; 
        •	show tables;

Explanation of DockerFile and its instructions: -

    FROM mysql:latest 

    ENV MYSQL_ROOT_PASSWORD 123 

    ENV MYSQL_DATABASE pucsdStudents 

    ENV MYSQL_USER pucsd 

    ENV MYSQL_PASSWORD pucsd 

    ADD test.sql /docker-entrypoint-initdb.d 

    EXPOSE 4040

First, we will be using mysql image with its latest version. So ‘’FROM mysql:latest” command will pull the mysql image latest version.
Then we will specify some Environment variables as we have to use them while creating mysql account. So, we will specify environment variables as mysql root password, mysql database name, mysql username, mysql password.

Now we can directly connect to Database pucsdStudents but here we have to import some data in it. So i have created a sql file as test.sql to import data from it. According to MySQL container documentation if we want to execute a file at beginning then we will write command “ADD” following file name which is to be imported, and by default this file should be added to specific directory called “docker-entrypoint-initdb.d ”. sql file should be at same directory of Dockerfile.

Now we have to add port mapping with instruction “EXPOSE “and port no. as 4040.

