json.extract! user, :id, :username, :team, :password, :permission, :created_at, :updated_at
json.url user_url(user, format: :json)
