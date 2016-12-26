class CreateUserBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_bookmarks do |t|

      t.integer :article_id, index: true
      t.integer :user_id, index: true 
      t.integer :bookmark_type, default: 0
      
      t.timestamps
    end
  end
end
