class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|

      t.string  :title 
      t.text    :description
      t.text    :category_ids, array: true, default: []
      t.integer :question_type, default: 0
      t.boolean :publish, default: false
      
      t.timestamps
    end
  end
end
