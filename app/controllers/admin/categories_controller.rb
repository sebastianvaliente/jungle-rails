class Admin::CategoriesController < ApplicationController

  http_basic_authenticate_with name: ENV["ADMIN_NAME"], password: ENV["ADMIN_PASS"], except: :index

  def index
  end

  def create
    @category = Category.new(name: params[:category][:name])
    @category.save
    render action: "index"
  end

end
