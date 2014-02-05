json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :document_type, :document, :postal_code, :iva_condition_id, :birthday, :customer_billing_id, :notes
  json.url customer_url(customer, format: :json)
end
