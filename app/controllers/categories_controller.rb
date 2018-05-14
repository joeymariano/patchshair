class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    binding.pry
    @category = Category.create(category_params)
    redirect_to user_path(User.find(session[:user_id]))
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
