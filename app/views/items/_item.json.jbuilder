json.extract! item, :id, :name, :description, :size, :price, :latitude, :longitude, :address, :category, :created_at, :updated_at
json.url item_url(item, format: :json)
