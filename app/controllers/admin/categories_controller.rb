class Admin::CategoriesController < ApplicationController

  def index
  end

  def create
    @category = Category.new(name: params[:category][:name])
    @category.save
    render action: "index"
  end

end
