# Creating a CI/CD Pipeline

First I create a webhook for the repository I will be using. Go into the repository and click on settings > Webhooks > add webhook

![wh1](images/wh1.png)

Then I added the payload URL. In this case it is the Jenkins IP that we are using followed by github-webhook.I also changed the content type to JSON. It can be seen below:
``` http://18.132.46.105:8080/github-webhook/ ```

![wh2](images/wh2.png)

# CI - Continuous Integration

First, on the Jenkins dashboard, click on new item as seen below.

![ci1](images/ci1.png)

Then type in the item name and select the type of project. I will be using a Freestyle project.

![ci2](images/ci2.png)


You must then enter in the configurations that you would like to use for this CI job. They will vary from job to job. [Click here to see the configuration of my CI Job](https://github.com/DanTeegan/AWS_webapp/blob/master/CI_config.pdf)


# CD – Continuous deployment

We start the same as creating a CI job. First on the dashboard click on new item and then enter the name. As this is the deployment job it is best practice to use deploy in the name. Again, this will be a freestyle project.

[For the full configuration of the CD job please click here](https://github.com/DanTeegan/AWS_webapp/blob/master/CD_config.pdf)

One import bit of code within the CD config is the execute shell commands. The SCP command syncs the files we choose into the VM.

```
scp -o "StrictHostKeyChecking=no" -r app/ ubuntu@54.246.11.0:/home/ubuntu/
scp -o "StrictHostKeyChecking=no" -r environment/ ubuntu@54.246.11.0:/home/ubuntu/
ssh -o "StrictHostKeyChecking=no" ubuntu@54.246.11.0 <<EOF
    sudo bash ./environment/app/provisions.sh
    cd app
    pm2 kill
    pm2 start app.js
EOF
```
