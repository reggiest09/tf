json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :short_description, :description, :amount
  json.url listing_url(listing, format: :json)
end
