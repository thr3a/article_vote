json.extract! vote, :id, :title, :url, :created_at, :updated_at
json.url vote_url(vote, format: :json)
