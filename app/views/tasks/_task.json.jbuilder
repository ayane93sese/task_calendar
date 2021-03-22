json.extract! task, :id, :title, :date, :text, :category_id, :rank_id, :status_id, :created_at, :updated_at
json.url task_url(task, format: :json)
