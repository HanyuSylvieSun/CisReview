class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :difficulty
      t.integer :workload
      t.integer :quality
      t.text :comment

      t.timestamps
    end
  end
end
