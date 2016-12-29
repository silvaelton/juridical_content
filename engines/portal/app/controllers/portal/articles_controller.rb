require_dependency 'portal/application_controller'

module Portal
  class ArticlesController < ApplicationController
    
    def index
      @articles = Portal::Article.all.order(:publish_date)
    end

  end
end