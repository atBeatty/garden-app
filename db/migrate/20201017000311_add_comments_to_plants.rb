class AddCommentsToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :comments, :string
  end
end
