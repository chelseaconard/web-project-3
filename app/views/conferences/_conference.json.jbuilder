json.extract! conference, :id, :wicys, :start_time, :end_time, :created_at, :updated_at
json.url conference_url(conference, format: :json)
