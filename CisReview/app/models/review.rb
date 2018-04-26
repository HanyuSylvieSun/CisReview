class Review < ApplicationRecord
	belongs_to :user
	belongs_to :course, dependent: :destroy
	belongs_to :instructor

	validates :difficulty, presence: :true
	validates :quality, presence: :true
	validates :workload, presence: :true

	validate :diff
	validate :qual
	validate :work

	private

	def diff
      errors.add(:difficulty, 'must be 0 to 100') if difficulty && (difficulty<0 || difficulty>100)
    end

    def qual
      errors.add(:quality, 'must be 0 to 100') if quality && (quality<0 || quality>100)
    end

    def work
      errors.add(:workload, 'must be 0 to 100') if workload && (workload<0 || workload>100)
    end

end
