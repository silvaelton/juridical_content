class CreateSimulationQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :simulation_questions do |t|

      t.integer :simulation_id, index: true 
      t.integer :question_id, index: true
      
      t.timestamps
    end
  end
end
