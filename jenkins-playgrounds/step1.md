
First we start the Jenkins container in detached mode with a tail to a log file we will create and use later:

`docker run -d -u root --rm --name jenkins  -p 8080:8080 -p 50000:50000 --env JENKINS_ADMIN_ID=admin \
 --env JENKINS_ADMIN_PASSWORD=password zeldi/jenkins:v1`{{execute}}
    
Check Jenkins process:

`docker exec jenkins ps -ef`{{execute}}

#### Load Dashboard

You can load the Jenkins' dashboard via the following URL https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/  or by clicking the dashboard tab on the right.

---

<pre>[[HOST_IP]]</pre>

`[[HOST_IP]]`{{execute}}

Resources:

* https://www.digitalocean.com/community/tutorials/how-to-automate-jenkins-setup-with-docker-and-jenkins-configuration-as-code