class CreateAbouts < ActiveRecord::Migration[5.1]
  def change
    create_table :abouts do |t|
    	t.text :bio
      t.integer :about_id
      t.timestamps
    end
  end
end
