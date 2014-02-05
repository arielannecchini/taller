class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.integer :province_id
      t.string :code
      t.string :description
      t.text :observation

      t.timestamps
    end
  end
end
