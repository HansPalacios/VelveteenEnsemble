class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :location
      t.string :event_type
      t.string :other_type
      t.string :length
      t.integer :amount
      t.integer :deposit
      t.integer :subtotal
      t.boolean :deposit_paid
      t.boolean :total_paid
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :phone, :limit => 8
      t.string :city
      # t.integer :customer_id
      t.timestamps
    end
  end
end
