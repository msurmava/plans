json.extract! plan, :id, :title, :completed, :user_id, :created_at, :updated_at
json.url plan_url(plan, format: :json)
