json.array!(@ratings) do |rating|
  json.extract! rating, :points, :comment
  json.url rating_url(rating, format: :json)
end
