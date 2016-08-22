class CreateMenuController < ApplicationController
  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      redirect_to new_menu_path
    end
  end
end
