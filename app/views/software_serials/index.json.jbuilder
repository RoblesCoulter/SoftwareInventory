json.array!(@software_serials) do |software_serial|
  json.extract! software_serial, :id
  json.url software_serial_url(software_serial, format: :json)
end
