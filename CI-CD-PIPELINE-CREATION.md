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
