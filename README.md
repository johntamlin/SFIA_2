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
