json.extract! user, :id, :username, :password, :team, :permission, :created_at, :updated_at
json.url user_url(user, format: :json)
