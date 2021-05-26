class ReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant # Linking restaurant id to review's restaurant_id
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show' # I want to render the method's path
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
