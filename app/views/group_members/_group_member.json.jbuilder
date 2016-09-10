json.extract! group_member, :id, :first_name, :last_name, :description, :phone, :email, :link, :created_at, :updated_at
json.url group_member_url(group_member, format: :json)