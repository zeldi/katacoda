We will prepare an environment with a Jenkins server running as a Docker Container.

`docker build -t jenkins:zeldi .`{{execute}}

First we start the container in detached mode with a tail to a log file we will create and use later:

`docker run -d -u root --rm --name jenkins \
    -p 8080:8080 -p 50000:50000 \
    --entrypoint bash \
    jenkins:zeldi \
    -c "tail -F /jenkins.log"`{{execute}}
    

`docker exec jenkins ps -ef`{{execute}}

#### Load Dashboard

You can load the Jenkins' dashboard via the following URL https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/  or by clicking the dashboard tab on the right.

The username is `admin`{{copy}} with the password the default `-----`{{copy}}

On your own system, the password can be found via

`docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword`{{execute}}

It may take a couple of seconds for Jenkins to finish starting and be available. In the next steps, you'll use the dashboard to configure the plugins and start building Docker Images.

---

<pre>[[HOST_IP]]</pre>

`[[HOST_IP]]`{{execute}}

<pre>[[HOST2_IP]]</pre>

`[[HOST2_IP]]`{{execute}}