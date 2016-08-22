class RestaurantsController < ApplicationController


  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def restaurant_params
    params.require(:restaurant).permit(:restaurant_name,
                                       :restaurant_address,
                                       :zip_code,
                                       :delivery_radius,
                                       :public_phone_number,
                                       :owner_name,
                                       :owner_address,
                                       :private_phone_number,
                                       :email_address,
                                       :restaurant_description,
                                       :select_your_cuisine)
  end
end
