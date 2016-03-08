json.array!(@university_contacts) do |university_contact|
  json.extract! university_contact, :id, :name, :email, :skype, :role
  json.url university_contact_url(university_contact, format: :json)
end
