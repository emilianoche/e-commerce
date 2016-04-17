json.array!(@products) do |product|
  json.extract! product, :id, :code, :price, :description
  json.url product_url(product, format: :json)
end
