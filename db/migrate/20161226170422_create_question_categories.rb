class CreateQuestionCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :question_categories do |t|

      t.string  :name 
      t.integer :father_id, index: true
      t.boolean :enable, default: false
      
      t.timestamps
    end
  end
end
