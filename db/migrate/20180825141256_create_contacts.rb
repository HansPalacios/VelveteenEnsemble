class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.text :message
      t.string :fname
      t.string :lname
    	t.string :email
    	t.integer :phone, :limit => 8
    	t.date :eventdate
    	t.string :eventlocation
    	t.string :event_type
      t.string :other_type
    	t.string :length
      t.string :heardby
      t.boolean :hidden
      t.integer :customer_id
      t.integer :event_id
      t.timestamps
    end
  end
end
