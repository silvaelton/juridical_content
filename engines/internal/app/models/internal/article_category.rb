module Internal
  class ArticleCategory < ::ArticleCategory
    validates :name, presence: true
  end
end