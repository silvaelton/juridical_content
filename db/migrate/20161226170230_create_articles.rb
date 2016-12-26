class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|

      t.text    :category_ids, array: true, default: []
      
      t.string  :title 
      t.text    :content
      t.boolean :publish, default: false
      t.boolean :revised, default: false
      t.date    :publish_date
      t.integer :likes
      t.integer :old_id
      t.text    :meta_tags

      t.timestamps
    end
  end
end
