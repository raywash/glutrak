class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: "You've been registered sucessfully!"
    else
      render :new
  end
end

def edit
  @user = User.find(params[:id])
end

def show
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])

  if @user.update_attributes(user_params)
    redirect_to users_path, notice: "You've been edited sucessfully!"
  else
    render :edit
  end  
end

private
  # Rails Strong Params
  def user_params
    params.require(:user).permit(
      :email,
      :first_name,
      :last_name,
      :password,
      :password_confirmation
    )
  end
end
