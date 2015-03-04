json.array!(@softwares) do |software|
  json.extract! software, :id
  json.url software_url(software, format: :json)
end
