class Customer < ActiveRecord::Base
  #belongs_to :customer_billing, :class_name => "Customer", :foreign_key => ":customer_billing_id"
  belongs_to :iva_condition
  def full_name
    return "#{first_name}, #{last_name}"
  end
end
