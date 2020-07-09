class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :type
      t.string :difficulty
      t.string :question_title
      t.string :correct_answer
      t.integer :user_id

      t.timestamps
    end
  end
end
