#### Brief

The objective with this project is to achieve the following:

- To create a web application that integrates with a database and demonstrates CRUD functionality.
- To utilise containers to host and deploy the application.
- To create a continuous integration (CI) continuous deployment (CD) pipeline that will automatically test, build and deploy the application.

#### My Objective
Create a database to record the storage and movement of firearms for a Reg Firearms dealer. This is a legal requirement for Registered Firearms Dealers in the UK . It is an essential to enable the effective accounting of all types of firearms and helps to ensure their security and appropriate ownership.

#### Proposed Structure
The application is a Flask application that serves both the frontend and backend of the application. The frontend aspect of the app will use HTML templates with CSS formatting to serve the web pages that allow the user to perform CRUD functionality with information from the database. The backend aspect of the application will use MySQL to model and integrate with the database.

#### Project Development
Jira was used as the project tracking and planning tool using Agile and Scrum as the principle planning methodology. MoSCoW was used for requirements elicitation.

Using MoSCoW method:

**MUST HAVE**
The system must have a secure log in and registartion of users.
Each firearm needs its details stored, its date of entry, purpose of storage and onward transfer.
The client bringing a firearm in (person handing a firearm in) needs to have their details stored - name, address, tel no, certificate details
The client taking a firearm out requires the same details to be taken
Stock check list

**SHOULD HAVE**
Receipt printing and labelling

**COULD HAVE**
Reporting all transactions to the relevant Police forces

**WOULD HAVE**
Delivery service integration and tracking

#### Technologies
+ Python
+ Pytest
+ Flask
+ Jenkins
+ Docker/Docker Compose
+ MySQL

#### Planning 
The planning of the project was essential in order to meet the aims. The Minimum Viable Product (MVP) being the principle aim. Following structural and outline planning on paper, Jira was used as the principle planning tool. It proved its value in monitoring progress and tracking tasks.

![Planning](/webapp/webapp/Plan.jpg)


![Jira](/webapp/webapp/Jira.jpg)

#### Docker and docker-compose
The first step to deploy the application was to containerise the application. The dockerfiles for the frontend and the backend of the app were created as well as a Docker Compose file to ensure all of the services needed were deployed. Three containers were created for web, PhP and MySQL.

#### Jenkins pipeline
Jenkins is a powerful tool used in CI/CD pipelines as it allows a number of tasks needed to deploy an application to be run automatically. In this specific case, the stages of the pipeline are: Build, Integrate and Confirm the Integration.

#### System

![System](/webapp/webapp/Flow.jpg)

#### Further Development
Although simple in its requirements and with limited complexity, the project was beyond my technical ability to complete within the constraints of the duration of the course. It remains a commercially viable proposition and a project to continue to be developed.
