class CategoriesController < ApplicationController
  def show
    @category = Category.find(id_param[:id])
    @articles = @category.articles
  end

  def id_param
    params.permit(:id)
  end
end
