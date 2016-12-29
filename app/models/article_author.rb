class ArticleAuthor < ApplicationRecord
  enum author_type: ['autor', 'co_autor','colaborador']
end
