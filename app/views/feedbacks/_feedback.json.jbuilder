json.extract! feedback, :id, :performance_review_id, :author_id, :content, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
