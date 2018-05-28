class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(product_id: @product.id, user_id: session[:user_id], description: params[:review][:description], rating: params[:review][:desired_attribute])
    @review.save
    redirect_to @product
  end

  def delete
    @review = Review.find params[:id]
    @review.destroy
    redirect_to '/'
  end

end
