json.extract! news, :id, :title, :source, :created_at, :updated_at
json.url news_url(news, format: :json)
