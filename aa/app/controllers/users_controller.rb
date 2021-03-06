class UsersController < ApplicationController
  def index
  	  	@user = User.new

  end

  def show
  	@user = User.find(params[:id]) 
  end

  def new
  	@user = User.new
  end

  def create
  @user = User.new(user_params)
  	if @user.save
      flash[:success] = "Account Created"
  		log_in @user
      redirect_to @user
  	else
      flash[:fail] = "Process aborted"
  		render 'index'
  	end

  end

  private
  def user_params
  	params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

end
