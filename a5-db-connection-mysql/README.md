# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* # MySQL Database connection <br>
    --> In this project we'll try to connect to a locally installed MySQL Database. <br>
    --> Only 'db:migration' command will be executed to create a table in the database to verify the DB connection. <br>

* ## Step-1: Create a new project. <br>
    --> rails new a5-db-connection-mysql --skip-git <br>

* ## Step-2: Configure MySQL connector <br>
    --> Download the compatible MySQL c/cpp connector from the MySQL site. <br>
    --> Here I'm using MySQL server 8 and hence 'Connector/C++ 8.1.0' <br>
          -->> https://dev.mysql.com/downloads/connector/cpp/ <br>
    --> Install on local machine <br>

* ## Step-3: configure DB connection details in config/database.yml <br>
      --> Check 'config/database.yml' for details <br>
  
* ## Step-4: Install 'mysql2' gem <br>
    -->  gem install mysql2 --platform=ruby -- --with-mysql-dir="D:\....\mysql-connector-c++-8.1.0-winx64" <br>


* ## Step 5: Add MySQL gem in your project bundle <br>
    --> Update 'GemFile' and add the below statement <br>
        -->> gem 'mysql2' <br>
    --> Note: Remove if any other database gem is added.  <br>
        -->> Check for sqlite3, its default DB for ruby-rails <br>
    --> Then execute the command 'bundle install' to add the gem to the project. <br>
    
* ## Step-6: Create a model to connect to the database table. <br>
    --> ruby bin\rails g model Customer cust_id:integer name:string mobile:integer <br>


* ## Step-7: Run 'db:migrate' to execute generate migration script to create the table in the database  <br>
      --> ruby bin\rails db:migrate  <br>
      --> Output  <br>
      -----------------  <br>
        == 20230808063434 CreateCustomers: migrating ==================================  <br>
        -- create_table(:customers)  <br>
        -> 0.1076s <br>
        == 20230808063434 CreateCustomers: migrated (0.1089s) ========================= <br>

* ## Step-8: Verify in the database
    --> Connect to the database and verify the table and its schema.


* ...
