class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      t.string :name 
      t.string :username 
      t.text   :bio
      t.string :avatar 
      t.string :email 
      t.string :password 
      
      t.boolean :administrator, default: false 
      t.boolean :reviewer,      default: false 
      t.boolean :author,        default: false 
      t.boolean :student,       default: false
      t.boolean :viewer,        default: true

      t.timestamps
    end

    add_index :users, :username, unique: true
  end
end
