# Creating 2 EC2 Instances

The next task was the following “As as user I want to go to an public IP (from your aws machine) and go to your app on /posts/ and see the posts in the app.. All on port 80”

To do this I needed to create a new EC2 instance called DB.  A full guide on creating a EC2 instance can be found by clicking here

![1](images/1.png)

Once I had 2 EC2 instances running (One app One DB) I had to create a security group to link both instances. Inside the App instance I edited the inbound rules and allowed the connection from the DB instance. The port range was set as 27017 as seen below. The source was the IP address from the DB instance.

![2](images/2.png)

