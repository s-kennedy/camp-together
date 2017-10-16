json.extract! profile, :id, :description, :first_aid, :wilderness_first_aid, :previous_trips, :age, :gender, :training, :city, :favourite_park, :created_at, :updated_at
json.url profile_url(profile, format: :json)
