json.extract! trip, :id, :start_date, :end_date, :title, :description, :max_participants, :created_at, :updated_at
json.url trip_url(trip, format: :json)
