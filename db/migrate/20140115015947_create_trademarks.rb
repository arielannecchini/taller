class CreateTrademarks < ActiveRecord::Migration
  def change
    create_table :trademarks do |t|
      t.string :code
      t.string :description
      t.text :observation

      t.timestamps
    end
  end
end
