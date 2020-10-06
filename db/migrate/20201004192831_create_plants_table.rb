class CreatePlantsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.decimal :light
      t.decimal :temperature
      t.decimal :humidity
      t.decimal :water
      t.integer :soil
      t.integer :user_id

    end

  end
end
