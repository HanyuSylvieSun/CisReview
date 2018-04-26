class AddInstructorIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :instructor_id, :integer
  end
end
