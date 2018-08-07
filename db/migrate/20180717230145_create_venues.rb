class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :title
      t.text :bio
      t.string :name
			t.string :video1
			t.string :video2
			t.string :video3      
      t.timestamps
    end
  end
end
