class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end

  def create
    binding.pry
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to new_menu_path
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:name)
  end


end
