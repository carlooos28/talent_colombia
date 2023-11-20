class CreateObjectives < ActiveRecord::Migration[7.1]
  def change
    create_table :objectives do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.integer :user_id

      t.timestamps
    end
  end
end
