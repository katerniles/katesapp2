json.array!(@news) do |news|
  json.extract! news, :id, :name, :email, :login
  json.url news_url(news, format: :json)
end
