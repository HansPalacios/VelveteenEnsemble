class CreateMusicians < ActiveRecord::Migration[5.1]
  def change
    create_table :musicians do |t|
      t.string :fname
      t.string :lname
      t.string :name
      t.string :instrument
      t.text :bio

      t.timestamps
    end
  end
end
