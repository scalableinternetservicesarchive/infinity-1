json.array!(@cities) do |city|
  json.extract! city, :id, :city_name, :city_desc
  json.url city_url(city, format: :json)
end
