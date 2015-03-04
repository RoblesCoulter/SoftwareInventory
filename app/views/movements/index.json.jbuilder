json.array!(@movements) do |movement|
  json.extract! movement, :id
  json.url movement_url(movement, format: :json)
end
