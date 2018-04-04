class Course < ApplicationRecord
  belongs_to :instructor, optional: :true
end
