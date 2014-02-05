json.array!(@iva_conditions) do |iva_condition|
  json.extract! iva_condition, :id, :code, :description, :observation
  json.url iva_condition_url(iva_condition, format: :json)
end
