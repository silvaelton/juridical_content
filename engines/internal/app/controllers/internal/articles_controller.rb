require_dependency 'internal/application_controller'

module Internal
  class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
      @articles = Internal::Article.all
    end

    def show
    end

    def new
      @article = Internal::Article.new
    end

    def create
      @article = Internal::Article.new(set_params)

      if @article.save
        flash[:green] = t(:success)
        redirect_to action: :index
      else
        render action: :new
      end
    end

    def edit
    end

    def update
    end

    def destroy
      if @article.destroy
        flash[:green] = t(:success)
      else 
        flash[:red] = t(:error)
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:article).permit(:title, :article_category_id, :content)
    end

    def set_article
      @article = Internal::Article.find(params[:id])
    end

  end
end