json.array!(@availabilities) do |availability|
  json.extract! availability, :id, :started_at, :price, :user_id
  json.url availability_url(availability, format: :json)
end
