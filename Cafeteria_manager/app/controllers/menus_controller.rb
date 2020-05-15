class MenusController < ApplicationController
  def index
    @current_user = current_user
    @menus = Menu.active
    render "index"
  end

  def new
    render "new"
  end

  def show
    @current_user = current_user
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
    redirect_to new_menu_path
  end

  def edit
    @id = params[:id]
    render "edit"
  end

  def update
    id = params[:id]
    menu = Menu.find(id)
    menu.active = params[:active]
    p params[:active]
    menu.save!
    redirect_to active_menus_path
  end

  def active_menus
    render "active"
  end
end
