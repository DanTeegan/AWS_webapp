# AWS Web App Task

# AWS info

# New commands

To sinc documents from your OS to your VM use the following command:
``` scp -i ~/.ssh/DevOpsStudents.pem -r app/ ubuntu@52.48.95.163:~/app/ ```

When creating the provision file in the environment folder I then used thw following command to sync:
``` scp -i ~/.ssh/DevOpsStudents.pem -r environment/ ubuntu@52.48.95.163:~/env/ ```

If an error occurs when tryung to sinc use the following command:
``` scp -o "IdentitiesOnly yes" -i ~/.ssh/DevOpsStudents.pem -r app/ ubuntu@52.48.95.163:~/app/ ```

# Add pictures below of proof


