json.extract! event, :id, :title, :date, :time, :place, :people, :created_at, :updated_at
json.url event_url(event, format: :json)
