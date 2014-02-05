class CreateIvaConditions < ActiveRecord::Migration
  def change
    create_table :iva_conditions do |t|
      t.string :code
      t.string :description
      t.text :observation

      t.timestamps
    end
  end
end
