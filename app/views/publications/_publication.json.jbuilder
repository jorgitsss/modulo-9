json.extract! publication, :id, :title, :author, :available, :created_at, :updated_at
json.url publication_url(publication, format: :json)
