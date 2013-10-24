json.array!(@apps) do |app|
  json.extract! app, :name, :description, :publisher, :version, :size, :price
  json.url app_url(app, format: :json)
end
