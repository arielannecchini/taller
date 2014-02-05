class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :document_type
      t.string :document
      t.string :postal_code
      t.integer :iva_condition_id
      t.date :birthday
      t.integer :customer_billing_id
      t.text :notes

      t.timestamps
    end
  end
end
