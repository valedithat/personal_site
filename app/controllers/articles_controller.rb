class ArticlesController < ApplicationController
  def show
    @article = Article.find(id_param[:id])
  end

  def index
    @articles = Article.all
  end

  private

    def id_param
      params.permit(:id)
    end
end
