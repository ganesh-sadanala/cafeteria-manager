class UsersController < ApplicationController
  skip_before_action :ensure_user_logged_in, :only => [:create, :new]

  def new
    render "users/new"
  end

  def show
    @user = User.find(params[:id])
    render "show"
  end

  def edit
    render "edit"
  end

  def update
    user = User.find(params[:id])
    if user && user.authenticate(params[:password])
      user.update!(email: params[:email], first_name: params[:first_name], last_name: params[:last_name], password: params[:password])
      user.save!
      redirect_to user_path(user.id)
    else
      flash[:error] = "Invalid Password"
      redirect_to edit_user_path(@current_user.id)
    end
  end

  def create
    new_user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      role: "customer",
    )
    if new_user.save
      redirect_to "/"
    else
      flash[:error] = new_user.errors.full_messages.join(",")
      redirect_to new_user_path
    end
  end

  def destroy
    User.find(params[:id]).delete
    redirect_to manage_billers_path
  end
end
