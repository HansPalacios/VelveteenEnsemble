class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :title
      t.string :name
      t.integer :venue_id
      t.belongs_to :venue, foreign_key: true
      t.timestamps
    end
  end
end
