json.extract! review, :id, :difficulty, :workload, :quality, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
