json.extract! performance_review, :id, :user_id, :objective_id, :rating, :comments, :created_at, :updated_at
json.url performance_review_url(performance_review, format: :json)
