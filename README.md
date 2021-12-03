<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://rocketlift.ca/assets/_rocket/R2-3c6296bf2343b849b947f8ccfce0de61dd34ba7f9e2a23a53d0a743bc4604e3c.png">
    <img src="https://rocketlift.ca/assets/_rocket/R2-3c6296bf2343b849b947f8ccfce0de61dd34ba7f9e2a23a53d0a743bc4604e3c.png" alt="Logo" width="500" height="200">
  </a>

  <h3 align="center">Rocket Elevators Foundation
</h3>
  
  <p align="center">
    Odyssey Program - Week 9 
  </p>
</p>



<!-- ABOUT THE PROJECT -->
## About The Project

Rocket Elevators Foundation is the 9th week project for the Odyssey 14 weeks program in CodeBoxx. 

By the 9th week We have created an INTERVENTION page that will be reponsible to send the intervention requests to MySql Database
storing data on the intervention table and also creating a ticket with Zendesk API


<br>

## Website deployed

* ### [rocketelevators-jt.com/](https://rocketelevators-jt.com//)

<br>

After filling and submitting an Intervention form, a new ticket will be created and send to the team. For to do that we are using Zendesk API, that we have integrated to this project.

## Installation

Clone or download the .zip for this project. 

Here are the commands that will have to be entered in your terminal to start the server:
- mySQL server start
- ruby -v (To check if a corresponding version need to be installed)
- rails -v (To check if a corresponding version need to be installed)
- bundle install (To install all the necessary Gems)
- Check in the directory for config/database.yml and if necessary replace the database password by yours.
- rails db:create
- rails s

<br>

Here are the commands that will have to be entered in your terminal when modifications are made in the database:
- Ctrl + C (to stop the server)
- rails db:migrate reset
- rails db:seed

<br>

## Accessing

By clicking on “Login”, users will be redirected to a page and be asked to provide an email address and password.
	
	Example: 

	Email: nicolas.genest@codeboxx.biz
	Password: password

Forms are accessible to all users (with or without accounts). Once a “Contact Us” part for home page or Quote form in request a quote page is filled and submitted, data is generated in the back-end.

<br>

To access the database, use Dbeaver or MySQLWorkbench, which shows a history of data stored in the server. The fictitious and real data covers the last 3 years of activity from companies. Graphical representations and charts will also be available in the stats page of the website. 

<br>

## Built With

* [Ruby V-2.6.6](https://www.ruby-lang.org/en/)
* [Rails V-5.2.6](https://guides.rubyonrails.org/)
* [MySql V-5.7](https://dev.mysql.com/)
* [Bootstrap](https://getbootstrap.com)
* [JQuery](https://jquery.com)
* [Postgres V-10.18](https://www.postgresql.org/docs/10/release-10-18.html)
* [Zendesk API Quick Start](https://developer.zendesk.com/documentation/ticketing/getting-started/zendesk-api-quick-start/)


<br>

## Project create by:

- **[Jones Tavares](https://github.com/johnnybigoo)**



