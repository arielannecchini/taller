json.array!(@telephone_types) do |telephone_type|
  json.extract! telephone_type, :id, :code, :description, :observation
  json.url telephone_type_url(telephone_type, format: :json)
end
