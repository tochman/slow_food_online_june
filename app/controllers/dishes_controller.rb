class DishesController < ApplicationController
  def new
    @dish = Dish.new
  end

  # def create
  #   @menu = Dishes.new(dish_params)
  #   if @dish.save
  #     redirect_to menus_path
  #   else
  #     flash[:error] = 'A name is required'
  #     redirect_to new_dish_path
  #   end
  # end
  #
  # private
  #
  # def dish_params
  #   params.require(:dish).permit(:name, :price)
  # end


end
