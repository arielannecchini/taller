json.array!(@telephones) do |telephone|
  json.extract! telephone, :id, :telephone_type_id, :contact, :telephone, :observation
  json.url telephone_url(telephone, format: :json)
end
