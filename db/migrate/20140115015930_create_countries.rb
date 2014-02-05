class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :code
      t.string :description
      t.text :observation

      t.timestamps
    end
  end
end
