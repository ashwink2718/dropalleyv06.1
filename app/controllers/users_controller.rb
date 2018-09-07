class UsersController < ApplicationController

  def new
    @user = User.new    
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to thanks_path
  end

  def show
    @user = User.find(params[:id])
   end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    flash[:success] = "Your account was updated successfully"
    redirect_to root
    else
    render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password) 
    end

end