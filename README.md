# ALMAMOV (Data Warehouse)

ALMAMOV is a data warehouse which shows graphics about MiBici records. Trips, hours, ports, origins and destinations 
are showed as Charts for a better user understandig. Also, the application allows to admins to applya a data mining
algorithm to the data warehouse. Data Mining algorithms were taken from [this repo.](https://github.com/mstuefer/data_mining).

## Installation

The applications was developed on windows platforms, using [rails installer](http://railsinstaller.org/en) (Rails 5.1.4 and ruby 2.3.3) to intall RoR and  [PostgreSQL](https://www.postgresql.org/) (Postgres 9.5.10) as DBSM. Just install the appropiate architecture to your system.

* Create the rol with its password
 `create role rol_name with createdb login password 'rol_password'`

* Create the rails project
 `rails new project_name`

* Connect our rails app with postgres adding the role and password in config/database.yml
```
    default: &default
    adapter: postgresql
    encoding: unicode
    pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
    username: rol_name
    password: rol_password
```

* Run the migration
 `rails db:migrate`

* Set up the DB:
 `rails db:setup`

* Generate the scaffold for Trips
 `rails g scaffold Trip genere:string age:integer start_trip:datetime end_trip:datetime origin_id:integer destination_id:integer`

* Run the migration
 `rails db:migrate`




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
