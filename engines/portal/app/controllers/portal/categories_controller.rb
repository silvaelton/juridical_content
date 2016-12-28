require_dependency 'portal/application_controller'

module Portal
  class CategoriesController < ApplicationController

    def show
      @articles = Portal::ArticleCategory.find(params[:id]).articles
    end

  end
end