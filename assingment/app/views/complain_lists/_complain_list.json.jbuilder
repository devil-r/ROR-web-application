json.extract! complain_list, :id, :title, :description, :created_at, :updated_at
json.url complain_list_url(complain_list, format: :json)
