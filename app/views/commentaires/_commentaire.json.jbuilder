json.extract! commentaire, :id, :content, :rate, :created_at, :updated_at
json.url commentaire_url(commentaire, format: :json)
