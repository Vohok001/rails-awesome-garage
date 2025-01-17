class ReviewsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @review = Review.new
  end

  def create
    @car = Car.find(params[:car_id])
    @review = Review.new(review_params)
    @review.car = @car
    if @review.save
      redirect_to car_path(@car)
    else
      render 'cars/show', status: unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :car_id)
  end

end
