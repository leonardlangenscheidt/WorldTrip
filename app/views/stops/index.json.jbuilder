json.array!(@stops) do |stop|
  json.extract! stop, :id, :country, :city, :latitude, :longitude, :visited
  json.url stop_url(stop, format: :json)
end
