class ArticlesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def new
  end

  def create
  end

  def show
    @article = Article.find(id_param[:id])
  end

  def index
    @articles = Article.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def id_param
      params.permit(:id)
    end
end
