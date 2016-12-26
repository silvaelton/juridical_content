class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|

      t.integer :question_id, index: true 
      t.text    :description
      t.text    :justify_correct
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
