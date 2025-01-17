class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    @favourite = Favourite.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to new_car_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to car_path, status: see_other
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :year, :fuel, :owner_id, :image_url)
  end
end
