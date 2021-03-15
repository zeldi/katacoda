We will prepare an environment with a Jenkins server running as a Docker Container.

`docker build -t jenkins:zeldi .`{{execute}}

First we start the container in detached mode with a tail to a log file we will create and use later:

`docker run -d -u root --rm --name jenkins \
 -p 8080:8080 -p 50000:50000  jenkins:zeldi`{{execute}}
    
Check Jenkins process:

`docker exec jenkins ps -ef`{{execute}}

#### Load Dashboard

You can load the Jenkins' dashboard via the following URL https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/  or by clicking the dashboard tab on the right.

---

<pre>[[HOST_IP]]</pre>

`[[HOST_IP]]`{{execute}}

Resources:

* https://www.digitalocean.com/community/tutorials/how-to-automate-jenkins-setup-with-docker-and-jenkins-configuration-as-code