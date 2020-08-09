#!/bin/bash

# this command allows a synchronisation between the OS and VM: In this case we are placing /app folder in the /home/ubuntu/ directory
scp -i ~/.ssh/DevOpsStudents.pem -r ~/NodeSampleAWSDeploystarter-code/starter-code/app/ ubuntu@ec2-63-35-221-32.eu-west-1.compute.amazonaws.com:/home/ubuntu/
# Syncing the environment/app folder to our VM
scp -i ~/.ssh/DevOpsStudents.pem -r ~/NodeSampleAWSDeploystarter-code/starter-code/environment/app ubuntu@ec2-63-35-221-32.eu-west-1.compute.amazonaws.com:/home/ubuntu/environment
# Syncing the environment/db folder to our vm
scp -i ~/.ssh/DevOpsStudents.pem -r ~/NodeSampleAWSDeploystarter-code/starter-code/environment/db ubuntu@ec2-52-209-11-237.eu-west-1.compute.amazonaws.com:/home/ubuntu/
# Going into our db vm
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-52-209-11-237.eu-west-1.compute.amazonaws.com -i $ ./provisions.sh
# Going into our app vm
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-63-35-221-32.eu-west-1.compute.amazonaws.com -i $ ./environment/app/provisions.sh
