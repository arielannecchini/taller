class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.integer :telephone_type_id
      t.string :contact
      t.string :telephone
      t.text :observation

      t.timestamps
    end
  end
end
