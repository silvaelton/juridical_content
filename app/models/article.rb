class Article < ApplicationRecord
  belongs_to :article_category

  has_many :article_authors

  def author_value_ids
    self.article_authors.where(author_type: 0).map(&:user_id)
  end
  def coauthor_value_ids
    self.article_authors.where(author_type: 1).map(&:user_id)
  end
  
  def collaborator_value_ids
    self.article_authors.where(author_type: 2).map(&:user_id)
  end

  def categories
    Internal::ArticleCategory.where(id: self.category_ids)
  end

end
