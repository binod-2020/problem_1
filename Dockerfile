FROM jenkins/jenkins:lts

USER root

COPY ./jenkins-plugins /usr/share/jenkins/plugins
RUN while read i ; \ 
      do /usr/local/bin/install-plugins.sh $i ; \
    done < /usr/share/jenkins/plugins
COPY ./lib/admin-user.groovy /usr/share/jenkins/ref/init.groovy.d/admin-user.groovy
COPY ./lib/executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY ./lib/global-env-vars.groovy /usr/share/jenkins/ref/init.groovy.d/global-env-vars.grioovy
COPY ./code/python_hello.zip /jenkins/artifact-repository/python_hello.zip

RUN apt-get update && apt-get upgrade -y \ 
    && apt-get install -y  python-pip pylint git zip
RUN pip install coverage

RUN chmod -R 777 /jenkins

USER jenkins
