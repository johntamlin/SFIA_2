#### Brief

The objective with this project is to achieve the following:

- To create a web application that integrates with a database and demonstrates CRUD functionality.
- To utilise containers to host and deploy your application.
- To create a continuous integration (CI)/continuous deployment (CD) pipeline that will automatically test, build and deploy your application.

#### My Objective
Create a database to record the storage and movement of firearms for a Reg Firearms dealer. This is a legal requirement in the UK . It is an essential requirement to enable the effective accounting of all types of firearms and helps ensure their security and appropriate ownership.

#### Proposed Structure
The application is a Flask application that serves both the frontend and backend of the application. The frontend aspect of the app will use HTML templates with CSS formatting to serve the web pages that allow the user to perform CRUD functionality with information from the database. The backend aspect of the application will use MySQL to model and integrate with the database.

#### Project Development
Jira was used as the project tracking and planning tool using Agile and Scrum as the principle planning methodology. MoSCoW was used for requirements elicitation.

Using MoSCoW method:
**MUST HAVE**

Each firearm needs its details stored, its date of entry, purpose of storage and onward transfer.
The user bringing a firearm in (person handing a firearm in) needs to have their details stored - name, address, tel no, certificate details
The user taking a firearm out requires the same details to be taken
Stock check list

**SHOULD HAVE**
Receipt printing and labelling

**COULD HAVE**
Reporting all transactions to the relevant Police forces

**WOULD HAVE**
Delivery service integration and tracking

#### Technologies
Python
Pytest
Flask
Jenkins
Docker/Docker Compose
MySQL

#### Planning 
The planning of the project was essential in order to meet the aims. The Minimum Viable Product (MVP) being the principle aim. Following structural and outline planning on paper, Jira was used as the principle planning tool. It proved its value in monitoring progress and tracking tasks.

![Planning](/webapp/webapp/Plan.jpg)
![Jira](/webapp/webapp/Jira.jpg)

Docker and docker-compose
The first step to deploy the application, was to containerise the application. This means that as long as docker and docker-compose are installed in a machine, the app will be able to run. To do so, the dockerfiles for the frontend and the backend of the app were created as well as a Docker Compose file to take care of all the services needed. Initially, a container was utilised for the database for testing purposes as shown in the following image.

Jenkins pipeline
Jenkins is a powerful tool used in CI/CD pipelines. In other words, it allows the developer to set a number of tasks needed to deploy an application. In this specific case, the stages of the pipeline are: declarative checkout SCM, build images, tag & push image, test and deploy.

Imgur

The Jenkins job was linked to the development branch of the github repository through a webhook to automate the process even more. The plugins installed in Jenkins (other than the ones that are there by default) where: ssh agent and docker pipeline. 
