class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :code
      t.string :description
      t.text :observation

      t.timestamps
    end
  end
end
