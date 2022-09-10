class UsersController < ApplicationController
  def show
    @user = User.find( session[:user_id])
    @post =@user.posts
  end

   def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully create an account"
    else
      render :new
    end

  end
  def user_params
  params.require(:user).permit(:email,:password, :password_confirmation ,:f_name, :l_name, :date_of_birth, :gender)
  end
end
