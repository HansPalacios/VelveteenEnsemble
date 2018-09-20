class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.text :message
      t.string :name
    	t.string :email
    	t.integer :phone
    	t.date :eventdate
    	t.string :eventlocation
    	t.string :type
    	t.string :length
      t.string :heardby
      t.timestamps
    end
  end
end
