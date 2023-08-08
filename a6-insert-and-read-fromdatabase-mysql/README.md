# README

This application demonstrates the minimun required artifacts to conneect and read data from database.

# * Step-1: Configure Database and complete migration
    * Check ../a5-db-connection-mysql to configure database step by step.

# * Step-2: Create model and configure it with table details.
    * Add 'self.table_name' property and provide table name including database name/scema name.
    * In this case - 'devdb.customers', devdb is database in mysql and 'customers' is table name.

# * Step-3: Create Controller to make query database
    * Expose controller class API to  get request from use.

# * Step-4: Database Query API
    * Read all data from table using 'model.all' API : 
        * @customers = Customer.all 
    * Execute query with 'where' caluse : 
        * @customers = Customer.where("cust_id = ?", params[:cust_id]).select("id, cust_id, name, mobile, email")
    * Note: Return type for both APIs is list type.

# * Step-4: Print database response data on console using 'puts'
    * Check methods of - app/controller/customer.rb

# * Step-4: Map url patterns to controller API
    * Do the controller mapping with request parameter:
        * get "/customer/:cust_id", to: "employee#find"

# * Step-4: Change the view to show the data.
    * Explore following  files for details:
        * app/views/employee/index.html.erb
        * app/views/employee/find.html.erb

* ...
