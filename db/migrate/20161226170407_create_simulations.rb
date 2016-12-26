class CreateSimulations < ActiveRecord::Migration[5.0]
  def change
    create_table :simulations do |t|

      t.string  :title 
      t.text    :description
      t.integer :difficulty, default: 0
      t.boolean :publish, default: false
      
      t.timestamps
    end
  end
end
