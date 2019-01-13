json.extract! item, :id, :title, :description, :name, :phno, :city, :created_at, :updated_at
json.url item_url(item, format: :json)
