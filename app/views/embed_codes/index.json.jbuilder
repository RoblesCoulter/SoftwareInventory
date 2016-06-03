json.array!(@embed_codes) do |embed_code|
  json.extract! embed_code, :id
  json.url embed_code_url(embed_code, format: :json)
end
