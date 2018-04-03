json.extract! course, :id, :number, :name, :website, :instructor_id, :created_at, :updated_at
json.url course_url(course, format: :json)
