class CreateBulletins < ActiveRecord::Migration[5.0]
  def change
    create_table :bulletins do |t|

      t.text :description
      t.boolean :publish, default: false
      t.boolean :revised, default: false 
      
      t.date    :date_publish
      t.date    :date_bulletin

      t.integer :layout, default: 0
      
      t.timestamps
    end
  end
end
