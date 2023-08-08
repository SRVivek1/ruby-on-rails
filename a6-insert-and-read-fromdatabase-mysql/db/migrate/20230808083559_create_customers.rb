class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.integer :cust_id
      t.string :name
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
