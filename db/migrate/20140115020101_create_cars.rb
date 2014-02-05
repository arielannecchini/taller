class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :patent
      t.string :frame
      t.integer :model_id
      t.integer :trademark_id
      t.integer :color_id
      t.integer :year
      t.text :observation
      t.integer :customer_id

      t.timestamps
    end
  end
end
