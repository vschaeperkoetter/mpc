json.array!(@kittens) do |kitten|
  json.extract! kitten, :id, :url, :wins
  json.url kitten_url(kitten, format: :json)
end
