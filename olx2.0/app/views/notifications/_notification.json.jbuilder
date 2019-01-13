json.extract! notification, :id, :title, :checked, :created_at, :updated_at
json.url notification_url(notification, format: :json)
