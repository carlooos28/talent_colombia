class CreateFeedbacks < ActiveRecord::Migration[7.1]
  def change
    create_table :feedbacks do |t|
      t.integer :performance_review_id
      t.integer :author_id
      t.text :content

      t.timestamps
    end
  end
end
