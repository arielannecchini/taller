class CreateEmailTypes < ActiveRecord::Migration
  def change
    create_table :email_types do |t|
      t.string :code
      t.string :description
      t.text :observation

      t.timestamps
    end
  end
end
