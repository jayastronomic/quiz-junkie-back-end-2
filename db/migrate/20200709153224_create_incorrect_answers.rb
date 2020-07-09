class CreateIncorrectAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :incorrect_answers do |t|
      t.string :answer
      t.integer :question_id

      t.timestamps
    end
  end
end
