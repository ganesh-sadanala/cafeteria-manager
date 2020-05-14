class MenusController < ApplicationController
  def index
    @current_user = current_user
    render "index"
  end

  def new
    render "new"
  end

  def show
    render "show"
  end

  def create
    name = params[:menu_name]
    Menu.create!(
      menu_name: name,
    )
    redirect_to new_menu_path
  end

  def destroy
    id = params[:id]
    Menu.find(id).destroy
    redirect_to menus_path
  end

  def edit
    @id = params[:id]
    render "edit"
  end
end
