class AdminController < ApplicationController
  def index
    redirect_to new_menu_path
  end

  def manage_billers
    @billers = User.all.where(role: "clerk")
    render "biller"
  end

  def new_clerk
    render "new_clerk"
  end

  def create_clerk
    new_user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      role: "clerk",
    )
    if new_user.save
      redirect_to manage_billers_path
    else
      flash[:error] = new_user.errors.full_messages.join(",")
      redirect_to new_clerk_path
    end
  end
end
