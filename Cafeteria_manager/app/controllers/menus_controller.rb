class MenusController < ApplicationController
  def index
    #render plain: Menu.all.map { |menu| menu.to_pleasant_string }.join("\n")
    render "index"
  end

  def show
    render "show"
  end

  def create
    name = params[:menu_name]
    Menu.create!(
      menu_name: name,
    )
    redirect_to menus_path
  end

  def destroy
    id = params[:id]
    Menu.find(id).destroy
  end
end
