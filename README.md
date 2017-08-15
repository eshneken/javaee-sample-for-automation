# Java EE Infrastructure as Code (IaC) Sample
Ed Shnekendorf, Cloud Platform Architect, Oracle

## Overview
This repository provides the code used to demonstrate IaC concepts using Docker, Jenkins, and Weblogic Server.  It is meant to be used in conjunction with the [Terraform/Chef Sample](https://github.com/eshneken/terraform-bmcs-weblogic-jenkins-chef) to provide an end-to-end automation sample that implements the following architecture:

![Project Digraph](src/main/webapp/images/architecture.png  "Project Architecture")

This project encapsulates steps 1-3 while the [Terraform/Chef Sample](https://github.com/eshneken/terraform-bmcs-weblogic-jenkins-chef) project handles steps 4-8.

This project leverages the private docker repository and Jenkins server/jobs that are set up as part of that project so start there first before setting this up.

## Project Organization

The contents of this project are executed by a Jenkins build job call **JEE_Sample_App**.

The **src** directory tree contains a simple Java EE application that leverages the Servlet/JSP spec.  Of course, it could be arbitrately complex and could leverage other parts of the Java EE ecosystem but I've chosen to keep it simple for this sample.  This is the application that is built and deployed to infrastructure using automation.  Its build is governed by the **pom.xml** file in the same directory.

Once the Maven build occurs, the next step is to dockerize the application.  This is governed by the **Dockerfile** which specifies a Weblogic base image (located in a private repository but originally pulled from the official [Docker Store](http://store.docker.com) into which a domain is created and the application is deployed.  Scripts that handle domain create and app deployment are foind in teh **container_scripts** folder.  

Finally, the newly composed Docker image is pushed back to the private Docker repo via a post-build callout to the **build-wls-with-app.sh** script.  Once this occurs, Jenkins follows up with a post-build action that triggers the Jenkins job created in [Terraform/Chef Sample](https://github.com/eshneken/terraform-bmcs-weblogic-jenkins-chef) to Terraform and Chef-provision an SDN and instance to run the Docker container we created.  The provide the linkage, Jenkins uses the **build-trigger-params.prop** file which contains the desired variables for the **Docker-Build Environment** job that you've configured in that project.

