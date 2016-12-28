module Internal
  class Article < ::Article
    validates :title, :content, presence: true
  end
end