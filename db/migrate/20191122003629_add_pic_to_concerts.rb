class AddPicToConcerts < ActiveRecord::Migration[5.1]
  def change
    add_column :concerts, :pic, :string
  end
end
