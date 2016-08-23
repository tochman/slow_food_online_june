class RestaurantsController < ApplicationController


  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    #binding.pry
    if @restaurant.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def restaurant_params
    params.require(:restaurant).permit(:name,
                                       :address,
                                       :zip_code,
                                       :delivery_radius,
                                       :phone_number,
                                       :email_address,
                                       :description,
                                       :cuisine)
  end
end
