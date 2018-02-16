json.extract! event, :id, :title, :time, :place, :people, :created_at, :updated_at
json.url event_url(event, format: :json)
