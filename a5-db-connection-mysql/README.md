# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* MySQL Database connection
    --> In this project we'll try to connect to locally installed MySQL Database.
    --> Only 'db:migration' command will be executed to create table in database to verify DB connection.

* Step-1: Create a new project.
    --> rails new a5-db-connection-mysql --skip-git

* Step-2: Configure MySQL connector
    --> Download the copatible mysql c/cpp connector from mysql site.
    --> Here I'm using MySQL server 8 and hence 'Connector/C++ 8.1.0'
        -->> https://dev.mysql.com/downloads/connector/cpp/
    --> Install on local machine

* Step-3: configure DB connection details in config/database.yml
      --> Check 'config/database.yml' for details
  
* Step-4: Install 'mysql2' gem
    -->  gem install mysql2 --platform=ruby -- --with-mysql-dir="D:\....\mysql-connector-c++-8.1.0-winx64"


* Step 5: Add MySQL gem in your project bundle
    --> Update 'GemFile' and add below statement
        -->> gem 'mysql2'
    --> Note: Remove if any other database gem is added. 
        -->> Check for sqlite3, it's default DB for ruby-rails
    --> Then execute command 'bundle install' to add the gem to project.
    
* Step-6: Create a model to connect to database table.
    --> ruby bin\rails g model Customer cust_id:integer name:string mobile:integer


* Step-5: Run 'db:migrate' to execute generate migration script to create table in database
     --> ruby bin\rails db:migrate
    --> Output
    ------------
        == 20230808063434 CreateCustomers: migrating ==================================
        -- create_table(:customers)
        -> 0.1076s
        == 20230808063434 CreateCustomers: migrated (0.1089s) =========================

* Step-6: Verify in database
    --> Connect to database and verify the table and it's schema.


* ...
