#  Setup solidus

## Clone repository

Clone the repository in your local with the next command:

    $ git clone git@github.com:albertm805/magmalabs-estimator.git

## Install the dependencies

You need to install the dependencies specified in your Gemfile, you do this with the next command: 

    $ bundle install

## Create the database

Create the database with the following command:

    $ rake db:create

## Setup the tables in the database

You need to setup the migrations with the next command:

    $ rake db:migrate

## Initialize your server

    $ rails s

## Go to your local server

And finally go to your local server with the next route in your navigator

    http://localhost:3000
