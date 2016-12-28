class CreateArticleCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :article_categories do |t|

      t.string :name 
      t.boolean :enable, default: false
      t.integer :father_id

      t.boolean :portal_view, default: false
      t.boolean :only_user,   default: false
      t.timestamps
    end
  end
end
