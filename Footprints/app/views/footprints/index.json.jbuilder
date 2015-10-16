json.array!(@footprints) do |footprint|
  json.extract! footprint, :id
  json.url footprint_url(footprint, format: :json)
end
