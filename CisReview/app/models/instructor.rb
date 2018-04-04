class Instructor < ApplicationRecord
	has_many :courses
	validates :first_name, presence: true
	validates :last_name, presence: true

	validate :f_capitalize
    validate :l_capitalize

    def f_capitalize
      errors.add(:first_name, 'must be capitalized') if first_name && first_name[0] != first_name[0].upcase
    end

    def l_capitalize
      errors.add(:last_name, 'must be capitalized') if last_name && last_name[0] != last_name[0].upcase
    end
end
