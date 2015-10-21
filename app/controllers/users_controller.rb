class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    permitted = params.require(:user).permit(:email, :password)
    @user = User.new(permitted)
    
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end
  
end
