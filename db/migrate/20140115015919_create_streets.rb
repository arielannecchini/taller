class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.integer :createStreet_type_id
      t.string :street
      t.integer :number
      t.integer :floor
      t.integer :department
      t.integer :locality_id
      t.integer :province_id
      t.integer :country_id

      t.timestamps
    end
  end
end
