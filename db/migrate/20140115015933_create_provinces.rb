class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.integer :country_id
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
