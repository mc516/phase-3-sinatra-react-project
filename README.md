# Phase 3 Project Sinatra API

## Description
This is a simple ruby application that contains end points for data requests from the front-end application with use of active records. This file containts three classes in which two have a one-many relationship joined by the review class. Full CRUD capabilities for review class and CREATE/READ/DELETE for restaurants.

## Quickstart 
Use command "bundle install" to install all dependencies before proceeding.

Use command "rake db:migrate" followed by "rake db:seed" to create tables for each respective models and seed sample data into database.

Use the command "rake server" to start back-end server before you cd into the front end directory and enter "npm install" to install dependencies and "npm start" to open up browser.

Enter "http://localhost:9292/" into your browser to see the seeded sample data.

Note:

Front-End: https://github.com/mc516/Phase-3-frontend