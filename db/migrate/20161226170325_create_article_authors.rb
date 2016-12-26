class CreateArticleAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :article_authors do |t|

      t.integer :article_id
      t.integer :user_id 
      t.integer :author_type, default: 0
      
      t.timestamps
    end
  end
end
