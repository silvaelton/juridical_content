require_dependency 'internal/application_controller'

module Internal
  class ArticleCategoriesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
      @article_categories = Internal::ArticleCategory.all
    end

    def show
    end

    def new
      @article_category = Internal::ArticleCategory.new
    end

    def create
      @article_category = Internal::ArticleCategory.new(set_params)

      if @article_category.save
        flash[:green] = t(:success)
        redirect_to action: :index
      else
        render action: :new
      end
    end

    def edit
    end

    def update

      if @article_category.update(set_params)
        flash[:green] = t(:success)
        redirect_to action: :index
      else
        render action: :edit
      end
      
    end

    def destroy
      if @article_category.destroy
        flash[:green] = t(:success)
      else 
        flash[:red] = t(:error)
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:article_category).permit(:name, :father_id, :enable, :portal_view, :only_user)
    end

    def set_article
      @article_category = Internal::ArticleCategory.find(params[:id])
    end

  end
end