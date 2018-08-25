class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :index
      t.string :text

      t.timestamps
    end
  end
end
