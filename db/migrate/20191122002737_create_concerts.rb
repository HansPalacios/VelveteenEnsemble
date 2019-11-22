class CreateConcerts < ActiveRecord::Migration[5.1]
  def change
    create_table :concerts do |t|
      t.string :title
      t.string :subtitle
      t.text :about
      t.string :comp1name
      t.text :comp1bio
      t.string :comp1pic
      t.string :comp2name
      t.text :comp2bio
      t.string :comp2pic
      t.string :comp3name
      t.text :comp3bio
      t.string :comp3pic
      t.string :comp4name
      t.text :comp4bio
      t.string :comp4pic

      t.timestamps
    end
  end
end
