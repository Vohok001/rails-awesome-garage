class FavouritesController < ApplicationController

  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new
    @favourite.car = @car
    if @favourite.save
      redirect_to car_path(@car), notice: "Car has been added to your faves"
    else
      render 'cars/show', status: unprocessable_entity, alert: "Something went wrong 😢"
    end
  end

  def destroy
    @favourite = Favourite.find(params['id'])
    @favourite.destroy
    redirect_to favourites_path, status: :see_other
  end

end
