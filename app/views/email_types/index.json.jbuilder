json.array!(@email_types) do |email_type|
  json.extract! email_type, :id, :code, :description, :observation
  json.url email_type_url(email_type, format: :json)
end
