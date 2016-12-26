class CreateBulletinArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :bulletin_articles do |t|

      t.integer :article_id, index: true 
      t.integer :bulletin_id, index: true 
      t.integer :order
      
      t.timestamps
    end
  end
end
