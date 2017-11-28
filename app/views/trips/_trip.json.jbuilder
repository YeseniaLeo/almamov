json.extract! trip, :id, :genere, :age, :start_trip, :end_trip, :origin_id, :destination_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
