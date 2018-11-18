class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :phone
      t.string :city

      t.timestamps
    end
  end
end
