json.extract! musician, :id, :name, :image, :instrument, :bio, :created_at, :updated_at
json.url musician_url(musician, format: :json)
