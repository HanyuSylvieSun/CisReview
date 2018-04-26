class Instructor < ApplicationRecord
  has_attached_file :image, styles: { medium: "200x200#"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	has_many :courses, dependent: :delete_all
  has_many :reviews
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
