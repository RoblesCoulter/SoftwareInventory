json.array!(@embed_code_universities) do |embed_code_university|
  json.extract! embed_code_university, :id, :acronym, :name, :comments, :test_user, :test_password, :test_site
  json.url embed_code_university_url(embed_code_university, format: :json)
end
