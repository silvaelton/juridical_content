module Portal
  class ArticleCategory < ::ArticleCategory
    
    default_scope { where( portal_view: true ).order(:name) }

  end
end