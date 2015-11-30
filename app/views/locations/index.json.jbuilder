json.array!(@locations) do |location|
  json.extract! location, :id, :name, :country, :responsible, :email
  json.url location_url(location, format: :json)
end
