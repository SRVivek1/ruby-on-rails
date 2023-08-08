class EmployeeController < ApplicationController
  
  def index
    # Read all records from customer tables
    @customers = Customer.all
    
    # Print name of each customer on console
    @customers.each do |cu|
      puts cu.name
    end
  end

  def find
    # Search for record with provided customer id.
    @customers = Customer.where("cust_id = ?", params[:cust_id]).select("id, cust_id, name, mobile, email")
    
    # Print object
    puts @customers

    # Print name of each customer on console
    @customers.each do |cu|
      puts cu.name
    end
  end

end
