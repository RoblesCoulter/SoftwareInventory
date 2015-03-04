json.array!(@boxes) do |box|
  json.extract! box, :id
  json.url box_url(box, format: :json)
end
