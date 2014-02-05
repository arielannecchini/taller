class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :code
      t.string :description
      t.text :observation

      t.timestamps
    end
  end
end
