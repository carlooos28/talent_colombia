class CreatePerformanceReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :performance_reviews do |t|
      t.integer :user_id
      t.integer :objective_id
      t.integer :rating
      t.text :comments

      t.timestamps
    end
  end
end
