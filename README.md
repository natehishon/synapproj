# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

notes:

Decided to change ActionController::API to ActionController::Base
this might be questionable.
But I decided the best way for the app to be easily reusable with future files
was to have a view with an upload button. 

The route path will show the upload button. 

My other thought for this would be to have upload code to look in a specific directory for a .csv file, 
but I chose to go with the upload button. 

