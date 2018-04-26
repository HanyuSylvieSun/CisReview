class Course < ApplicationRecord
  has_many :reviews
  belongs_to :user
  belongs_to :instructor, optional: :true
  validates :name, presence: :true
  validates :number, presence: :true
end
