class UsersController < ApplicationController

  def index
    render :index
  end

  def new
    render :new
  end 

  def create
    @user = User.new(user_params)
    if @user.save
    	login!(@user)
    	redirect_to user_url
    else
    	flash[:errors] = @user.errors.full_messages
    	redirect_to users_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
